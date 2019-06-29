class CreateAuthors < ActiveRecord
  def change
    create_table :authors do |t|
      t.string :name
    end
  end
end
