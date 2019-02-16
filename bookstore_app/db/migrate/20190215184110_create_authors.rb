class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :Fname
      t.string :Lname
      t.text :Bio

      t.timestamps
    end
  end
end
