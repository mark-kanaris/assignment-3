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
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path, notice: "Entry was successfully created."
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:name)
  end
end






