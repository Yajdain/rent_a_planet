class UsersController < ApplicationController
  before_action :set_planetoffer, only: %i[destroy]
  def index
    @planetoffers = PlanetOffer.all.where("user_id = #{current_user.id}")
  end

  def destroy
    @planetoffer.destroy
    redirect_to users_path, status: see_other
  end


  private

  def set_planetoffer
    @planetoffer = PlanetOffer.find(params[:id])
  end
end
