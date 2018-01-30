class ProductsController < ApplicationController
   before_action :authenticate_user! , only: [:new]
  def index
    @products = Product.all
  end
  def new
    @product = Product.new

  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end

  end
  def edit
    @product = Product.find(params[:id])

  end
  def show
    @product = Product.find(params[:id])
    @reviews = Review.where(product_id: @product.id).order("created_at DESC")
    @review = Review.new
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :description)

  end
end
