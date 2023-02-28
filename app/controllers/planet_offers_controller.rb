class PlanetOffersController < ApplicationController

before_action :set_planet_offer, only: %i[show edit update destroy]

def index
  @planet_offers = PlanetOffer.all
end

def create
  @planet_offer = PlanetOffer.new(planet_offer_params)
  @planet_offer.save
  redirect_to planet_offers_path
end

def update
  @planet_offer.update(planet_offer_params)
  redirect_to planet_offer_path(@planet_offer)
end

def edit; end
def show; end

def destroy
  @planet_offer.destroy
  redirect_to planet_offers_path, status: :see_other
end

def new
  @planet_offer = PlanetOffer.new
end

private

def planet_offer_params
  params.require(:planet_offer).permit(:title, :name, :description)
end

def set_planet_offer
  @planet_offer = PlanetOffer.find(params[:id])
end
end
