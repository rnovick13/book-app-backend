class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render json: @reviews
  end

  def show
    @review = Review.find(params[:book_id])
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
    def review_params
      params.require(:review).permit(:name, :body)
    end

end
