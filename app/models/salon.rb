class Salon < ApplicationRecord
  belongs_to :user

  validates :shop_name, precense: true
  validates :nav_logo, precense: true
  validates :top_catch, precense: true
end
