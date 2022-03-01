class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: { message: 'The Car was successfully deleted.', status: :accepted }
    else
      render json: { message: 'Something went wrong while deleting this car.' }
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :image, :reserved, :price)
  end
end
