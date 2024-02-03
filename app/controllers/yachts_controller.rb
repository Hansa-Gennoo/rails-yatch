class YachtsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
    @booking = Booking.new
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = current_user.yachts.build(yacht_params)

    if @yacht.save
      redirect_to yacht_path(@yacht), notice: 'Yacht was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @yacht = Yacht.find(params[:id])
  end

  def update
    @yacht = Yacht.find(params[:id])
    @yacht.update(yacht_params)
    redirect_to yacht_path(@yacht)
  end

  def destroy
    @yacht = Yacht.find(params[:id])
    @yacht.destroy

    redirect_to yachts_path, notice: 'Yacht was successfully destroyed.'
  end

  # Add other actions as needed

  private

  def yacht_params
    params.require(:yacht).permit(:name, :price_per_day, :capacity, :description)
  end
end
