class BookingsController < ApplicationController
  def new
  @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save

    end
  end

  def show
   @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:first_name,:second_name,:email,:phone, :disease_type, :inquiry)
  end
end
