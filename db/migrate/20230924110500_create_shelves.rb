class CreateShelves < ActiveRecord::Migration[7.0]
  def change
    create_table :shelves do |t|
      t.string :name
      t.integer :code
      t.references :lib,  foreign_key: true

      t.timestamps
    end
  end
end
