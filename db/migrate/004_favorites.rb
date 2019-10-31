class Favorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
