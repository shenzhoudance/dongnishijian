class ProductListsController < ApplicationController
  def index
    @product_lists = ProductList.all

  end
end
