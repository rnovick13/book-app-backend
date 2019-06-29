class CreateReviews < ActiveRecord
  def change
    create_table :reviews do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
