class BookingsController < ApplicationController
  def new
  @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
    flash[:success] = "Booking created"
    else
      respond_to do |format|
        format.js
      end
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