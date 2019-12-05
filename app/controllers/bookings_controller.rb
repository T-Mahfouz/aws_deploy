class BookingsController < ApplicationController
  def new
  @booking = Booking.new
  end

  def create
  @booking = Booking.new(booking_params)
  if @booking.save
    redirect_to booking_path @booking
  else
    render 'new'
  end
  end

  def show
   @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:first_name,:second_name,:email,:phone, :indication, :message)
  end
end
