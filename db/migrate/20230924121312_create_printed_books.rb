class CreatePrintedBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :printed_books do |t|
      t.references :book_publisher, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.string :ind_code

      t.timestamps
    end
  end
end
