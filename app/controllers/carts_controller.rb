class CartsController < ApplicationController
  before_action :authenticate_user! # Ensure the user is logged in

  def index
    @user = current_user
    @carts = @user.carts.includes(:network)
    @ingredients = @carts.map { |cart| cart.cart_items.map { |cart_item| cart_item.ingredient } }.flatten
  end

  def show
  end
end
