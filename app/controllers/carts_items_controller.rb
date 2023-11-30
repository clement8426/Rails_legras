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
    if @cart_item.save
      raise
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

  def add_item(ingredient)
    existing_item = cart_items.find_by(ingredient: ingredient)

    if existing_item
      existing_item.increment(:quantity)
    else
      cart_item = cart_items.build(ingredient: ingredient, quantity: 1)
      cart_item.save
    end
  end
end
