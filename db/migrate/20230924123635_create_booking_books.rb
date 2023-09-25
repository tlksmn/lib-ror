class CreateBookingBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :printed_book, null: false, foreign_key: true
      t.references :lib, null: false, foreign_key: true
      t.date :from
      t.date :to
      t.string :status
      t.boolean :is_active

      t.timestamps
    end
  end
end
