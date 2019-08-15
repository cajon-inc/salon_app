class Salon < ApplicationRecord
  belongs_to :user

  has_one_attached :nav_logo
  has_one_attached :logo
  has_one_attached :footer_logo
  has_one_attached :store_photo
  has_one_attached :concept1_image
  has_one_attached :concept2_image
  has_one_attached :concept3_image
end
