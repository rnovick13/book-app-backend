class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :cover
  belongs_to :author_id
end
