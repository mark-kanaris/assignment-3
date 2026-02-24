class PlacesController < ApplicationController

  # NOTE: use `@place` not `@places` or `@post` in the actions below
def index
  @places = Place.all
end
def show
    @place = Place.find(params[:id])
    @entries = @place.entries
    # render places/show view with details about the place
  end

def new
    # instantiate a new Place for the form
    @place = Place.new
  end

def create
    place = Place.new
    place["name"] = params["name"]
    place.save
    redirect_to "/places"
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
end
