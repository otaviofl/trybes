class PictureExperience < ApplicationRecord
  belongs_to :experience
  mount_uploader :picture, PhotoUploader

end
