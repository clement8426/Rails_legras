class Ingredient < ApplicationRecord
  VALID_CATEGORIES = [
    "Viandes et volailles",
    "Produits laitiers",
    "Fromages",
    "fruits",
    "légumes",
    "Céréales",
    "Vin et spiritueux",
    "Boissons non alcoolisées",
    "Epices et aromates"
  ].freeze

  has_many_attached :photo
  validates :category, inclusion: { in: VALID_CATEGORIES, message: "%<value> n'est pas une catégorie valide" }
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients
  validates :category, presence: true

end
