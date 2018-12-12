class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :matches, dependent: :destroy
  #validates_uniqueness_of :user_id, :scope => :experience_id
end
