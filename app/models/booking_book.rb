class BookingBook < ApplicationRecord
  belongs_to :user
  belongs_to :printed_book
  belongs_to :lib

  booking_status =  %w(reserved took returned)
  validates :status, :inclusion => { :in =>  booking_status }
end
