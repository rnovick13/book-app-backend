class CreateBooks < ActiveRecord
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.string :cover

      t.timestamps
    end
  end
end
