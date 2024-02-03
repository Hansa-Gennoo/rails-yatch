class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @yacht = Yacht.find(params[:yacht_id])
    @booking.yacht = @yacht
    @booking.user = current_user
    @booking.total_price = (@booking.end_date - @booking.start_date) * @yacht.price_per_day
    @booking.save!
    redirect_to bookings_path, notice: 'Booking was successfully created.'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path, notice: 'Booking has successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
