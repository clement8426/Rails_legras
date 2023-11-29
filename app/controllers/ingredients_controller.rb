class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
  end
end
