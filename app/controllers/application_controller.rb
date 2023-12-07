class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  after_action :trigger_job

  def trigger_job
    if current_user
      @ingredients = current_user.cart_items.map(&:ingredient)
      RecipeProcessingJob.perform_later(@ingredients)
    end
  end
end
