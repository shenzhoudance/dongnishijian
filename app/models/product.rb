class Product < ApplicationRecord
  has_many :product_list
  mount_uploader :image, ImageUploader
  has_many :reviews
end
