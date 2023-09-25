class Lib < ApplicationRecord
  belongs_to :country
  has_many :shelves
  has_many :booking_books
end
