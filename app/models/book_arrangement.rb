class BookArrangement < ApplicationRecord
  belongs_to :shelf
  belongs_to :book_publisher
  belongs_to :lib
  belongs_to :book
  belongs_to :printed_book
end
