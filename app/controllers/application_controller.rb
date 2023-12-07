class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def trigger_job
    @ingredients = current_user.cart_items.map(&:ingredient)
    RecipeProcessingJob.perform_later(@ingredients)
  end
end
