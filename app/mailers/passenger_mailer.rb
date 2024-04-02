class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(params)
    @passengers = Booking.find(params.id).passengers
    @url = 'http://example.com/login'
    
    @passengers.each do |passenger|
      @passenger = passenger
      mail(to: passenger.email, subject: 'Welcome to my Awesome Site')
    end
  end
end
