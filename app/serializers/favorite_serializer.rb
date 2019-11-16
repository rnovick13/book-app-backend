class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,
  belongs_to :book_id
end
