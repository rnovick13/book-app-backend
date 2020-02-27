class ReviewsController < ApplicationController

  protect_from_forgery unless: -> { request.format.json? }

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def show
    review = Review.find_by(id: params[:id])
    options = {
      include: [:book]
    }
    render json: ReviewSerializer.new(review, options)
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: "Hello"
  end

  private
    def review_params
      params.require(:review).permit(:name, :body, :book_id)
    end

end
