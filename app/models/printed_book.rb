class PrintedBook < ApplicationRecord
  belongs_to :book_publisher
  belongs_to :book
  has_many :booking_books
end
