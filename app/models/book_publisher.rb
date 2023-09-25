class BookPublisher < ApplicationRecord
  belongs_to :country
  belongs_to :book
  belongs_to :publisher
  has_many :printed_books
end
