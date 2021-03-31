class AircraftsController < ApplicationController

  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  # GET /aircrafts
  def index
    sort = params[:sort] || session[:sort]

    case sort
        when "name"
        ordering, @name_header = {:name => :asc}, "bg-warning hilite"
        when "role"
        ordering, @role_header = {:role => :asc}, "bg-warning hilite"
        when "country"
        ordering, @country_header = {:country => :asc}, "bg-warning hilite"
        when "year"
        ordering, @year_header = {:year => :asc}, "bg-warning hilite"
    end

      if params[:sort] != session[:sort]
        session[:sort] = sort
        redirect_to :sort => sort and return
    end
      
    @aircrafts = Aircraft.all.order(ordering)
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
