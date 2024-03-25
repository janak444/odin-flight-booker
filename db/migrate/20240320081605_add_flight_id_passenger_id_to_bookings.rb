class AddFlightIdPassengerIdToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :flight_id, :integer
    add_column :bookings, :passenger_id, :integer
  end
end
