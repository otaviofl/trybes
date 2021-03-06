class Experience < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :ratings, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :picture_experiences, dependent: :destroy
  monetize :price_cents
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
