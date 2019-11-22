class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :cover
  belongs_to :author
  def author
    {author_id: self.object.author.id,
    author_name: self.object.author.name}
  end
end
