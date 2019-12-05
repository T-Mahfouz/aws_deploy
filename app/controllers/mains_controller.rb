class MainsController < ApplicationController

  def home

  end

  def contact
  @booking = Booking.new
  end
end
