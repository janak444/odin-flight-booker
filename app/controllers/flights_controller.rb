class FlightsController < ApplicationController
  def index
    @departure_list = Flight.all.map { |flight| [flight.departure_airport.airport_code, flight.departure_id] }.uniq
    @arrival_list = Flight.all.map { |flight| [flight.arrival_airport.airport_code, flight.arrival_id] }.uniq
    @number_of_passengers = [1, 2, 3, 4]
    @flight_date_list = Flight.all.map do |flight|
      [flight.start_datetime.strftime('%Y-%m-%d %H:%M:%S'), flight.start_datetime]
    end.uniq
    return if params[:flight_date].nil?

    @flights = Flight.where(departure_id: params[:departure_code], arrival_id: params[:arrival_code],
                            start_datetime: params[:flight_date].to_datetime.all_day)
    @passengers = params[:num_tickets]
  end
end
