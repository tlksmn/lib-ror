class Book < ApplicationRecord
  belongs_to :genre
  has_and_belongs_to_many :authors
  has_many :book_publishers
  has_many :publishers, :through => :book_publishers
  has_many :book_arrangements
  has_many :shelves, :through => :book_arrangements
  has_many :libs, :through => :book_arrangements
  has_many :printed_books
end
