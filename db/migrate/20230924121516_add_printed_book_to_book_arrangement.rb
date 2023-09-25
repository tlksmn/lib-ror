class AddPrintedBookToBookArrangement < ActiveRecord::Migration[7.0]
  def change
    add_reference :book_arrangements, :printed_book,  foreign_key: true
  end
end
