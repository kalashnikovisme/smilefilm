# encoding: utf-8

class PhotoUploader < ApplicationUploader
  include ImageDefaults

  def default_url
    ActionController::Base.helpers.asset_path("images/default_news_photo.png")
  end

  version :big do
    process :resize_to_fill => [600, 600]
  end

  version :medium do
    process :resize_to_fill => [400, 400]
  end

  version :small do
    process :resize_to_fill => [100, 100]
  end
end
