class CartsItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_ingredient, only: [:create]
  # before_action :set_ingredient, only: [:create]


  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.cart = @cart
    @cart_item.ingredient = @ingredient

    if @cart_item.save
      respond_to do |format|
        format.html { redirect_to network_path(Network.find(@cart.network.id)) }
        @html_content = render_to_string partial: 'networks/cart', locals: { cart: @cart }, formats: [:html]
        format.json { render json: { html: @html_content } }
      end
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart = @cart_item.cart
    if @cart_item.destroy
      respond_to do |format|
        format.html { redirect_to network_path(Network.find(@cart.network.id)) }
        @html_content = render_to_string partial: 'networks/cart', locals: { cart: @cart }, formats: [:html]
        format.json { render json: { html: @html_content } }
      end
    end
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
