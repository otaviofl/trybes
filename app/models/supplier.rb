class Supplier < ApplicationRecord
  mount_uploader :picture_avatar, PhotoUploader
  mount_uploader :picture_banner, PhotoUploader
end
