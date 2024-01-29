class YachtsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
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
    @yacht = current_user.yachts.find(params[:id])
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
    @yacht = current_user.yachts.find(params[:id])
    @yacht.destroy
    redirect_to yachts_path, notice: 'Yacht was successfully destroyed.'
  end

  # Add other actions as needed

  private

  def yacht_params
    params.require(:yacht).permit(:name, :price_per_day, :capacity, :description)
  end
end
