class AddFlightDurationToFlights < ActiveRecord::Migration[7.1]
  def change
    add_column :flights, :flight_duration, :integer
  end
end
