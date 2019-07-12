class CreateAuthors < ActiveRecord
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
  end
end
