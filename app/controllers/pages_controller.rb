class PagesController < ApplicationController
  def home;end

  def profile
    @planetoffers = PlanetOffer.all.where("user_id = #{current_user.id}")
  end
end
