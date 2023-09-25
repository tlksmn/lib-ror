class Publisher < ApplicationRecord
  belongs_to :country
  has_many :book_publishers
  has_many :books, :through => :book_publishers
end
