class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :body
  belongs_to :book_id
end
