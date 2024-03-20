# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create(airport_code: "TIA")
Airport.create(airport_code: "NYC")
Airport.create(airport_code: "DIA")
Airport.create(airport_code: "SFO")

Flight.create(departure_id: 1, arrival_id: 2, start_datetime: DateTime.current + 6.days, flight_duration: 120)
Flight.create(departure_id: 2, arrival_id: 4, start_datetime: DateTime.current + 4.days, flight_duration: 400)
Flight.create(departure_id: 3, arrival_id: 1, start_datetime: DateTime.current + 5.days, flight_duration: 330)
Flight.create(departure_id: 1, arrival_id: 3, start_datetime: DateTime.current + 1.days, flight_duration: 500)