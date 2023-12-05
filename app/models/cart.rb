require 'uri'
require 'nokogiri'
require 'httparty'
require 'open-uri'
require 'recipe_scraper'

class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :network
  has_many :cart_items

  def self.content(ingredients)
    client = OpenAI::Client.new

    @ingredients = ingredients
    content_message = "donne moi le nom d une recette qui inclus quelques un des ingrédient suivant :#{ingredients}. Je veux que ta réponse ne soit composé que du nom de la recette et rien d autre. "

    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: content_message }]
    })

    recipe_name = chaptgpt_response["choices"][0]["message"]["content"]
    recipe_name = name_for_url(recipe_name)
    self.scrape_recipe(recipe_name)

  end

  def self.name_for_url(recipe_name)
    URI.encode_www_form_component(recipe_name.strip)
  end

  def self.scrape_recipe(recipe_name)
    url = "https://www.marmiton.org/recettes/recherche.aspx?aqt=#{recipe_name}"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search("a")[35].attribute("href").value
    marmiton_url = "https://www.marmiton.org#{html_doc.search("a")[35].attribute("href").value}"
    html_file = URI.open(marmiton_url).read

    return html_doc = Nokogiri::HTML(html_file)
    end
end
