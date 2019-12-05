class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  belongs_to :book
  def book
    {book_id: self.object.book.id,
    title: self.object.book.title,
    cover: self.object.book.cover,
    author: self.object.book.author}
  end
end
