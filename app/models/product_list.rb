class ProductList < ApplicationRecord
  belongs_to :product
  has_one :product_list_content
end
