require 'uri'
require 'nokogiri'
require 'httparty'
require 'open-uri'
require 'recipe_scraper'

class RecipeProcessingJob < ApplicationJob
  queue_as :default

  def perform(ingredients)

    client = OpenAI::Client.new
    content_message = "donne moi le nom d une recette qui inclus quelques un des ingrédient suivant :#{ingredients}. Je veux que ta réponse ne soit composé que du nom de la recette et rien d autre. "

    chatgpt_response = client.chat(parameters: {
      model: "gpt-4",
      messages: [{ role: "user", content: content_message }]
    })

    recipe_name = chatgpt_response["choices"][0]["message"]["content"]
    recipe_name = URI.encode_www_form_component(recipe_name.strip)


    url = "https://www.marmiton.org/recettes/recherche.aspx?aqt=#{recipe_name}"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    marmiton_url = "https://www.marmiton.org#{html_doc.search("a")[35].attribute("href").value}"
    html_file = URI.open(marmiton_url).read

    html_doc = Nokogiri::HTML(html_file)

    recipe_name = html_doc.at("h1").text.strip
    recipe_spec = html_doc.search(".recipe-primary__item").map(&:text).map(&:strip)
    recipe_ingredients = html_doc.search(".card-ingredient").map(&:text).map(&:strip)
    recipe_steps = html_doc.search(".recipe-step-list__container").map(&:text).map(&:strip)
    CartChannel.broadcast_to('cart', { recipe_name: recipe_name, recipe_spec: recipe_spec, recipe_ingredients: recipe_ingredients, recipe_steps: recipe_steps })
  end
end
