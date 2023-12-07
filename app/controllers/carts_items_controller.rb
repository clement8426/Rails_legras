# app/controllers/carts_items_controller.rb

class CartsItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_ingredient, only: [:create]

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.cart = @cart
    @cart_item.ingredient = @ingredient

    respond_to do |format|
      if @cart_item.save
        format.html { redirect_to network_path(Network.find(@cart.network.id)) }
        @html_content = render_to_string partial: 'networks/cart', locals: { cart: @cart }, formats: [:html]
        format.json { render json: { html: @html_content } }
      else
        format.json { render json: { error: @cart_item.errors.full_messages.join(', ') }, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart = @cart_item.cart
    puts path = Rails.application.routes.recognize_path(request.referrer)
    if @cart_item.destroy
      respond_to do |format|
        if path[:controller] == "networks"
          format.html { redirect_to request.referrer }
          @html_content = render_to_string partial: 'networks/cart', locals: { cart: @cart }, formats: [:html]
        else
          @html_content = render_to_string partial: 'carts/cart_list', locals: { cart: @cart }, formats: [:html]
        end
        format.json { render json: { html: @html_content } }
      end
    end
  end

  def update_progress
    @html_content = render_to_string partial: 'path/to/progress_bar_partial', locals: { cart: @cart }, formats: [:html]
    render json: { html: @html_content }
  end

  private

  def set_cart
    if Cart.find_by(network_id: params[:network_id], user_id: current_user.id).nil?
      @cart = Cart.create(network_id: params[:network_id], user_id: current_user.id)
    else
      @cart = Cart.find_by(network_id: params[:network_id], user_id: current_user.id)
    end
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :ingredient_id)
  end

  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end
end
