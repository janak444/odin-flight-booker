class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :departure_id
      t.integer :arrival_id
      t.datetime :start_datetime
      t.time :flight_duration

      t.timestamps
    end
  end
end
