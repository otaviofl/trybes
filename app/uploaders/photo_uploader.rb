class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # TODO: Version image sizes
  # process eager: true  # Force version generation at upload time.

  # process convert: 'jpg'

  # version :card_banner do
  #   resize_to_fit 560, 200
  # end
end
