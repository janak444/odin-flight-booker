class RemoveFlightDurationFromFlights < ActiveRecord::Migration[7.1]
  def change
    remove_column :flights, :flight_duration, :time
  end
end
