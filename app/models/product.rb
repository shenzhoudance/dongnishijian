class Product < ApplicationRecord
  has_many :product_list
  mount_uploader :image, ImageUploader
end
