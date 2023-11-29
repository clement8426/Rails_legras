class User < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :cart
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  belongs_to :network, optional: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  scope :farmer, -> { where(type: "farmer") }
  scope :client, -> { where(type: "client") }

  def client?
    type == 'client'
  end

  def farmer?
    type == "farmer"
  end
end
