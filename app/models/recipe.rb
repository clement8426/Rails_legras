class Recipe < ApplicationRecord
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients

  def content
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "Give me a simple recipe with the ingredients #{ingredients}. Give me only the text of the recipe, without any of your own answer like 'Here is a simple recipe'."}]
    })
    return chaptgpt_response["choices"][0]["message"]["content"]
  end
end
