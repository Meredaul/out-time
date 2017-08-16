class ReviewsController < ApplicationController
  def create
    @pub = Pub.find(params[:pub_id])
    @review = Review.new(review_params)
    @review.pub = @pub
    if @review.save
      redirect_to pub_path(@pub)
    else
      render "pubs/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

