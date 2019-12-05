class Book < ApplicationRecord
  has_many :reviews
  belongs_to :author, :favorite
end
