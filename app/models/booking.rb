class Booking < ApplicationRecord
  belongs_to :flight, foreign_key: 'flight_id', class_name: 'Flight'
  has_many :passengers, foreign_key: 'booking_id', inverse_of: :booking
  accepts_nested_attributes_for :passengers
end
