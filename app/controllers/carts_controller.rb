class CartsController < ApplicationController
before_action :authenticate_user! # Ensure the user is logged in

  def index
    @user = current_user
    @carts = @user.carts.includes(:network)
    @ingredients = @carts.map { |cart| cart.cart_items.map { |cart_item| cart_item.ingredient } }.flatten
    # @generated_content = Cart.content(@ingredients)
    # @name = @generated_content.css("h1").text.strip
    # @ingredients = @generated_content.css(".card-ingredient").map(&:text).map(&:strip)
    # @steps = @generated_content.css(".recipe-step-list__container").map(&:text).map(&:strip)
  end
end
