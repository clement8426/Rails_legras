class CartsItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, :set_ingredient, only: [:create]
  # before_action :set_ingredient, only: [:create]

  def create
    # ingredient = Ingredient.find(params[:ingredient_id])
    # farmer_network = ingredient.user
    @cart_item = CartItem.new
    @cart_item.cart = @cart
    @cart_item.ingredient = @ingredient
    @cart_item.quantity = cart_item_params[:quantity]

    if @cart_item.save
      @cart_item = CartItem.new(@ingredient)
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
    params.require(:cart_item).permit(:quantity)
  end
end
