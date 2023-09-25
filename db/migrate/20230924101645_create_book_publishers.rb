class CreateBookPublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :book_publishers do |t|
      t.integer :year
      t.integer :printing
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
