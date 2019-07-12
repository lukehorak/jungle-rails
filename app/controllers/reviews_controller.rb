class ReviewsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    review = product.reviews.new(review_params)
    review.user = current_user
    if review.save
      redirect_to product, notice: "Review created successfully"
    else
      redirect_to product, notice: "Error creating review!"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end

end