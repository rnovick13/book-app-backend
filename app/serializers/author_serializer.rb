class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
