# frozen_string_literal: true

class BookingsController < ApplicationController
  def new
    @booking = Booking.build
    @flight = Flight.find(params[:flight_id])
    @number_of_passengers = params[:number_of_passengers]
    @passenger = Passenger.new
  end

  def create
    
    @booking = Booking.create!(booking_params)
    
    if @booking.save
      PassengerMailer.welcome_email(@booking).deliver_now
      redirect_to @booking 
    end
  end

  def show
    @passengers = Booking.find(params[:id]).passengers
    @flight = Booking.find(params[:id]).flight
    @count = 0
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end
end
