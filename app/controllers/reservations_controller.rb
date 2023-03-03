class ReservationsController < ApplicationController
  # before_action :set_reservation, only: %i[show edit update destroy]
  before_action :set_planet_offer, only: %i[new create]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.planet_offer = @planet_offer
    if @reservation.save
      redirect_to pages_profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def edit
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path, status: :see_other
  end

  def new
    @reservation = Reservation.new
    @user = current_user
  end

  private

  def reservation_params
    params.require(:reservation).permit(:validated, :start_date, :end_date)
  end

  # def set_reservation
  #   @reservation = Reservation.find(params[:id])
  # end

  def set_planet_offer
    @planet_offer = PlanetOffer.find(params[:planet_offer_id])
  end
end
