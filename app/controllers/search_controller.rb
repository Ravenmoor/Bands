class SearchController < ApplicationController
	  protect_from_forgery

	  def index
	  	@title = "Search"
	  	# @bands = Band.where("name = ?", params[:search])
	  end

	  def search
	  	@future_band = Band.find_all_by_name(params[:search])
	    if @future_band.blank?
	      redirect_to :action => :create_or_search, :search_terms => params[:search] # // ask to create new band
	    else
	      redirect_to band_path(@future_band) # //render results and turn over control to show bands
	    end
	  end

	  def create_or_search
	  	@title = "Create New Band"
	  	@future_band = params[:search_terms]
	  end

	  def create
	  end

end
