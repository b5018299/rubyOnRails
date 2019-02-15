class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :Title
      t.float :Price
      t.string :Book_id
      t.string :Publisher
      t.text :Description

      t.timestamps
    end
  end
end
