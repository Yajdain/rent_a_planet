class PagesController < ApplicationController
  def home;end

  def profile
    @planetoffers = PlanetOffer.all.where("user_id = #{current_user.id}")
    @reservations = Reservation.where(user: current_user)
  end
end
