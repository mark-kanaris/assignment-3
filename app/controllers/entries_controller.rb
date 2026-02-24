class EntriesController < ApplicationController

def index
  @entry = Entry.all
end

def show
    @entry = Entry.find(params[:id])
    # render entries/show view with details about the entry
  end

def new
    # instantiate a new Entry for the form
    @entry = Entry.new
  end

def create
    entry = Entry.new
    entry["place_id"] = params["place_id"]
    entry["title"] = params["title"]
    entry["description"] = params["description"]
    entry["occurred_on"] = params["occurred_on"]
    entry.save
    redirect_to "/places/" + params["place_id"]
  end

  private

  def entry_params
    params.require(:entry).permit(:name)
  end
end






