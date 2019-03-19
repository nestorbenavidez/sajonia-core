class ReceptionPointsController < ApplicationController
  before_action :set_reception_point, only: [:show, :edit, :update, :destroy]

  # GET /reception_points
  # GET /reception_points.json
  def index
    @reception_points = ReceptionPoint.all
  end

  # GET /reception_points/1
  # GET /reception_points/1.json
  def show
  end

  # GET /reception_points/new
  def new
    @reception_point = ReceptionPoint.new
  end

  # GET /reception_points/1/edit
  def edit
  end

  # POST /reception_points
  # POST /reception_points.json
  def create
    @reception_point = ReceptionPoint.new(reception_point_params)

    respond_to do |format|
      if @reception_point.save
        format.html { redirect_to @reception_point, notice: 'Reception point was successfully created.' }
        format.json { render :show, status: :created, location: @reception_point }
      else
        format.html { render :new }
        format.json { render json: @reception_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reception_points/1
  # PATCH/PUT /reception_points/1.json
  def update
    respond_to do |format|
      if @reception_point.update(reception_point_params)
        format.html { redirect_to @reception_point, notice: 'Reception point was successfully updated.' }
        format.json { render :show, status: :ok, location: @reception_point }
      else
        format.html { render :edit }
        format.json { render json: @reception_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reception_points/1
  # DELETE /reception_points/1.json
  def destroy
    @reception_point.destroy
    respond_to do |format|
      format.html { redirect_to reception_points_url, notice: 'Reception point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reception_point
      @reception_point = ReceptionPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reception_point_params
      params.require(:reception_point).permit(:name)
    end
end
