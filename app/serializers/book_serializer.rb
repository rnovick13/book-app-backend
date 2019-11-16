class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :cover
  def author
    {author_id: self.object.author.id,
    author_name: self.object.name}
  end
end
