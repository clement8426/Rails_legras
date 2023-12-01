class CartsItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, :set_ingredient, only: [:create]
  # before_action :set_ingredient, only: [:create]


  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.cart = @cart
    @cart_item.ingredient = @ingredient

    if @cart_item.save
      redirect_to network_path(Network.find(@cart.network.id))
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to network_path(Network.find(@cart_item.cart.network.id))
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
    params.require(:cart_item).permit(:quantity)
  end
end
