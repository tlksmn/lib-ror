class Country < ApplicationRecord
  has_many :authors
  has_many :libs
  has_many :book_publishers
end
