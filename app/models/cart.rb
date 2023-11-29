class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :network
  has_many :cart_items
end
