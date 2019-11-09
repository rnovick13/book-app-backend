class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorite.create(review_params)
    render json: @favorite
  end

  def show
    @favorite = Favorite.find(params[:book_id])
  end

  def delete
    @favorite.destroy
  end

  private
    def review_params
      params.require(:favorite).permit(:book_id)
    end

end
