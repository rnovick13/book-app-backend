class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def show

  end
end
