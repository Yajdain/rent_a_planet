class PlanetOffersController < ApplicationController

before_action :set_planetoffer, only: %i[show edit update destroy]

def index
  @planetoffers = Planetoffer.all
end

def create
  @planetoffer = Planetoffer.new(planetoffer_params)
  @planetoffer.save
  redirect_to planetoffers_path
end

def update
  @planetoffer.update(planetoffer_params)
  redirect_to planetoffer_path(@planetoffer)
end

def edit; end
def show; end

def destroy
  @planetoffer.destroy
  redirect_to planetoffers_path, status: :see_other
end

def new
  @planetoffer = Planetoffer.new
end

private

def planetoffer_params
  params.require(:planetoffer).permit(:title, :name, :description)
end

def set_planetoffer
  @planetoffer = Planetoffer.find(params[:id])
end
end
