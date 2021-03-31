class AircraftsController < ApplicationController

  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  # GET /aircrafts
  def index
    @aircrafts = Aircraft.all
  end

  # GET /aircrafts/1
  def show
  end

  # GET /aircrafts/new
  def new
    @aircraft = Aircraft.new
  end

  # GET /aircrafts/1/edit
  def edit
  end

  # POST /aircrafts
  def create
    @aircraft = Aircraft.new(aircraft_params)

    if @aircraft.save
      redirect_to @aircraft, notice: 'Aircraft was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /aircrafts/1
  def update
    if @aircraft.update(aircraft_params)
      redirect_to @aircraft, notice: 'Aircraft was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /aircrafts/1
  def destroy
    @aircraft.destroy
    redirect_to aircrafts_url, notice: 'Aircraft was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aircraft
      @aircraft = Aircraft.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aircraft_params
      params.require(:aircraft).permit(:name, :role, :country, :year)
    end

end
