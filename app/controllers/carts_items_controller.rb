class CartsItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    cart = current_user.cart
    ingredient = Ingredient.find(params[:ingredient_id])
    cart.add_item(ingredient)
  end

  private

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
