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
    favorite = Favorite.find_by(id: params[:id])
    options = {
      include: [:book]
    }
    render json: FavoriteSerializer.new(favorite, options)
  end

  def delete
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end

  private
    def review_params
      params.require(:favorite).permit(:book_id)
    end

end
