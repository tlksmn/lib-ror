class CreateBookArrangements < ActiveRecord::Migration[7.0]
  def change
    create_table :book_arrangements do |t|
      t.references :shelf, null: false, foreign_key: true
      t.references :book_publisher, null: false, foreign_key: true
      t.references :lib, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :floor

      t.timestamps
    end
  end
end
