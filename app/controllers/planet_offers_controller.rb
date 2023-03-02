class PlanetOffersController < ApplicationController
  before_action :set_planetoffer, only: %i[show edit update destroy]

  def index
    @planetoffers = PlanetOffer.all
  end

  def show
  end

  def new
    @planetoffer = PlanetOffer.new
  end

  def create
    @planetoffer = PlanetOffer.new(planet_offer_params)
    @planetoffer.user = current_user
    if @planetoffer.save
      redirect_to planet_offers_path(@planetoffer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @planetoffer.update(planetoffer_params)
    redirect_to planet_offers_path(@planetoffer)
  end

  def edit
  end

  def destroy
    @planetoffer.destroy
    redirect_to planet_offers_path, status: :see_other
  end


  private

  def planet_offer_params
    params.require(:planet_offer).permit(:name, :location, :superficie, :gravite, :rayon, :price, :title, :photo)
  end

  def set_planetoffer
    @planetoffer = PlanetOffer.find(params[:id])
  end
end
