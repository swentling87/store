class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)

    if @review.save
      flash[:notice] = "Comment saved successfully."
      redirect_to product_path(@product)
    else
      flash[:alert] = "Comment failed to save."
      redirect_to product_path(@product)
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :name, :rating)
  end
end
