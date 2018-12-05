class User < ApplicationRecord
  has_many :ratings
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :picture_avatar, PhotoUploader
  mount_uploader :picture_banner, PhotoUploader
end
