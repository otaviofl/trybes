class Supplier < ApplicationRecord
  has_many :experiences
  mount_uploader :picture_avatar, PhotoUploader
  mount_uploader :picture_banner, PhotoUploader
end
