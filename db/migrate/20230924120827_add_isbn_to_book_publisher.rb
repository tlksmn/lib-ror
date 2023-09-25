class AddIsbnToBookPublisher < ActiveRecord::Migration[7.0]
  def change
    add_column :book_publishers, :isbn, :integer
  end
end
