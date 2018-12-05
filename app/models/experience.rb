class Experience < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  monetize :price_cents
  has_many :ratings
  has_many :bookings
  has_many :picture_experiences
end
