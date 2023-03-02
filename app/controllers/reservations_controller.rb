class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy]

  def index
    @reservations = Reservation.all
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to reservation_path
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def edit
  end

  def destroy
    @reservation.destroy
    redirect_to reservation_path, status: :see_other
  end

  def new
    @reservation = Reservation.new
  end

  private

  def reservation_params
    params.require(:reservation).permit(:validated, :start_date, :end_date, :user_id, :planet_offer_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
