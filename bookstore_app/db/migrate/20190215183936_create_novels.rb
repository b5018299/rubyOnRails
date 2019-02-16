class CreateNovels < ActiveRecord::Migration[5.2]
  def change
    create_table :novels do |t|
      t.string :Title
      t.integer :Genre_id
      t.integer :Author_id
      t.integer :Publisher_id
      t.string :isbn
      t.float :Price
      t.date :Publication
      t.string :Format
      t.text :Description
      t.integer :Pages

      t.timestamps
    end
  end
end
