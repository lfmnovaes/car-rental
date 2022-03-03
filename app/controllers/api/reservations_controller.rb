class Api::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    @reservation = Reservation.includes(:user, :car, :city).find(params[:id])
    render json: @reservation.to_json(include: %i[user car city])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      render json: { message: 'The Reservation was successfully deleted.', status: :accepted }
    else
      render json: { message: 'Something went wrong while deleting this reservation.' }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date_start, :date_end, :user_id, :city_id, :car_id)
  end
end
