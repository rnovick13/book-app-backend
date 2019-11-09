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

  end

  def delete
    
  end

  private
    def review_params
      params.require(:favorite).permit(:book_id)
    end

end
