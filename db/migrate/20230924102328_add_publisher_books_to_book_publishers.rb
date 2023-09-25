class AddPublisherBooksToBookPublishers < ActiveRecord::Migration[7.0]
  def change
    add_reference :book_publishers, :publisher,  foreign_key: true
    add_reference :book_publishers, :book,  foreign_key: true
    add_index :book_publishers, [:publisher_id, :book_id, :country_id], unique: true
  end
end
