class BandsController < ApplicationController
  # GET /bands
  # GET /bands.json
  def index
    @bands = Band.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bands }
    end
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
    @band = Band.find(params[:id])
    @title = @band.name

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @band }
    end
  end

  # GET /bands/new
  # GET /bands/new.json
  def new
    @title = "New Band"
    @band = Band.new
    @band.name = params[:band_name]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @band }
    end
  end

  # GET /bands/1/edit
  def edit
    @title = "Edit Band Name"
    @band = Band.find(params[:id])
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = Band.new(params[:band])

    respond_to do |format|
      if @band.save
        format.html { redirect_to @band, notice: 'Band was successfully created.' }
        format.json { render json: @band, status: :created, location: @band }
      else
        format.html { render action: "new" }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bands/1
  # PUT /bands/1.json
  def update
    @band = Band.find(params[:id])

    respond_to do |format|
      if @band.update_attributes(params[:band])
        format.html { redirect_to @band, notice: 'Band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    respond_to do |format|
      format.html { redirect_to bands_url }
      format.json { head :no_content }
    end
  end

  def search
  end
end
