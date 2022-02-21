class Api::ReservationsController < ApplicationController
  def index
    render json: Reservation.all
  end

  def show
    reservation = Reservation.includes(:user, :car, :city).find(params[:id])
    render :json => reservation.to_json(:include => [:user, :car, :city])
  end
end
