class ReviewsController < ApplicationController
before_action :self_product

  def new
      @review = Review.new
  end

  def create
        @review = Review.new(review_params)
        @review.user= current_user
        @review.product = @product
      if  @review.save
        redirect_to   product_path(@product)
      else
        flash[:warning] = "你没有填写评论内容！"
        redirect_to   product_path(@product)
      end
  end



  private

  def self_product
      @product = Product.find(params[:product_id])
  end

  def review_params
    params.require(:review).permit(:content,:user_id,:product_id)
  end
end
