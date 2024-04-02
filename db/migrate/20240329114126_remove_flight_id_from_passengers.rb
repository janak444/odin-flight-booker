class RemoveFlightIdFromPassengers < ActiveRecord::Migration[7.1]
  def change
    remove_column :passengers, :flight_id, :integer
  end
end
