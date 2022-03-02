class Api::CarsController < ApplicationController
  before_action(only: [:index, :show]) { @reservations = Reservation.all }

  def index
    @cars = Car.all
    @cars.each do |c|
      c.reserved = reserved?(c.id)
    end
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    @car.reserved = reserved?(@car.id)
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

  def reserved?(id)
    @reservations.each do |i|
      if (i.car_id == id) && (i.date_start..i.date_end).cover?(Time.now) then
        return true
      end
    end
    false
  end

  def car_params
    params.require(:car).permit(:brand, :model, :year, :image, :reserved, :price)
  end
end
