class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  def book
    {book_id: self.object.book.id,
    title: self.object.title,
    author: self.object.author,
    cover: self.object.cover}
  end
end
