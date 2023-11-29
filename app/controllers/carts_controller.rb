class CartsController < ApplicationController
  before_action :authenticate_user! # Ensure the user is logged in
  def index
    @user = current_user
    @carts = @user.carts.includes(:network)
  end

  def show
  end
end
