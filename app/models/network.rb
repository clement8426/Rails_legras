class Network < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_location_and_description,
  against: [ :name, :location, :description ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
