class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :body
  def book
    {book_id: self.object.book.id,
      title: self.object.title  
    }
  end
end
