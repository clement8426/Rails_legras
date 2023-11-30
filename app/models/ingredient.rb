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
  belongs_to :user_ingredient
  delegate :user, to: :user_ingredient
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients
  validates :category, inclusion: { in: VALID_CATEGORIES, message: "%<value> n'est pas une catégorie valide" }
  validates :category, presence: true

end
