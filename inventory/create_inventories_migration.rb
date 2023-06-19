class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :manufacturer
      t.string :model
      t.integer :data_memory
      t.datetime :year_of_manufacture
      t.string :os_version
      t.string :body_color
      t.decimal :price
      t.text :notes

      t.timestamps
    end
  end
end
