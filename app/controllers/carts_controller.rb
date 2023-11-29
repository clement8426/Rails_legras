class CartsController < ApplicationController
  before_action :authenticate_user! # Ensure the user is logged in
  def index
  end

  def show
  end
end
