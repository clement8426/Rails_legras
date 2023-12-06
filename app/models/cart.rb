require 'uri'
require 'nokogiri'
require 'httparty'
require 'open-uri'
require 'recipe_scraper'

class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :network
  has_many :cart_items, dependent: :destroy

  def self.content(ingredients)
    RecipeProcessingJob.perform_later(ingredients)
  end
end
