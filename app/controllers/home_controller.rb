class HomeController < ApplicationController

  def index
  end

  def contact
    @booking = Booking.new
  end
  
end
