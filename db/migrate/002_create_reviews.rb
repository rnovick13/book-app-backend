class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
