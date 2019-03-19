class TypeOfVehiclesController < ApplicationController
  before_action :set_type_of_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /type_of_vehicles
  # GET /type_of_vehicles.json
  def index
    @type_of_vehicles = TypeOfVehicle.all
  end

  # GET /type_of_vehicles/1
  # GET /type_of_vehicles/1.json
  def show
  end

  # GET /type_of_vehicles/new
  def new
    @type_of_vehicle = TypeOfVehicle.new
  end

  # GET /type_of_vehicles/1/edit
  def edit
  end

  # POST /type_of_vehicles
  # POST /type_of_vehicles.json
  def create
    @type_of_vehicle = TypeOfVehicle.new(type_of_vehicle_params)

    respond_to do |format|
      if @type_of_vehicle.save
        format.html { redirect_to @type_of_vehicle, notice: 'Type of vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_vehicle }
      else
        format.html { render :new }
        format.json { render json: @type_of_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_vehicles/1
  # PATCH/PUT /type_of_vehicles/1.json
  def update
    respond_to do |format|
      if @type_of_vehicle.update(type_of_vehicle_params)
        format.html { redirect_to @type_of_vehicle, notice: 'Type of vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @type_of_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_vehicles/1
  # DELETE /type_of_vehicles/1.json
  def destroy
    @type_of_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to type_of_vehicles_url, notice: 'Type of vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_vehicle
      @type_of_vehicle = TypeOfVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_vehicle_params
      params.require(:type_of_vehicle).permit(:name)
    end
end
