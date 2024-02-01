class YachtsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @yachts = Yacht.all
    @yachts = @yachts.where(user: current_user) if current_user
  end

  def show
    @yacht = Yacht.find(params[:id])
    @booking = Booking.new
  end

  def new
    @yacht = current_user.yachts.build
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
    redirect_to root_path unless current_user == @yacht.user
  end

  def update
    @yacht = current_user.yachts.find(params[:id])

    if @yacht.update(yacht_params)
      redirect_to yacht_path(@yacht), notice: 'Yacht was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @yacht = Yacht.find(params[:id])
    redirect_to root_path unless current_user == @yacht.user

    @yacht.destroy
    redirect_to yachts_path, notice: 'Yacht was successfully destroyed.'
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :price_per_day, :capacity, :description)
  end
end
