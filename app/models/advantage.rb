class Advantage < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  validates :icon, presence: true

  mount_uploader :icon, ImageUploader
end
