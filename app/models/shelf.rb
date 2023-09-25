class Shelf < ApplicationRecord
  belongs_to :lib
  has_many :book_arrangements
  has_many :books, :through => :book_arrangements
  has_many :book_publishers, :through => :book_arrangements
end
