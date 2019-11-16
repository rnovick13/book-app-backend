class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  def books
    self.object.books.map do |book|
      {title: book.title,
      cover: book.cover}
    end
  end
end
