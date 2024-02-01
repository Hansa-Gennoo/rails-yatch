class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(booking_params)

    if @booking.save
      redirect_to user_bookings_path(current_user), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = current_user.bookings.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(current_user), notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :yacht_id)
  end
end
