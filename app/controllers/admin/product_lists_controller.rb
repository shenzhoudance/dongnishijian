class Admin::ProductListsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  def index
    @product_lists = ProductList.all
  end
  def new
    @product_list = ProductList.new
  end
  def create
    @product_list = ProductList.new(product_list_params)
    if @product_list.save
      redirect_to admin_product_product_list_path(@product_list)
    else
      render :new
    end
  end
  def edit
    @product_list = ProductList.find(params[:id])
  end
  def show
    @product_list = ProductList.find(params[:id])
  end
  def update
    @product_list = ProductList.find(params[:id])
    if @product_list.update(product_list_params)
      redirect_to admin_product_list_path(@product_list)
    else
      render :edit
    end
  end
  def destroy
    @product_list = ProductList.find(params[:id])
    @product_list.destroy
    redirect_to admin_product_lists_path
  end
  private
  def product_list_params
    params.require(:product_list).permit(:title, :description)
  end

end
