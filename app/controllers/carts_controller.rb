class CartsController < ApplicationController
  def index
    @user = current_user
    @carts = @user.carts.includes(:network)
  end

  def show

  end
end
