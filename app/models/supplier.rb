class Supplier < ApplicationRecord
  has_many :experiences, dependent: :destroy
  mount_uploader :picture_avatar, PhotoUploader
  mount_uploader :picture_banner, PhotoUploader
end
