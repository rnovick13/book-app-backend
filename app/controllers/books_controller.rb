class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    book = Book.find_by(id: params[:id])
    options = {
      include: [:author]
    }
    render json: BookSerializer.new(book, options)
  end
end
