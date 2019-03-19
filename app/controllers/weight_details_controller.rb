class WeightDetailsController < ApplicationController
  before_action :set_weight_detail, only: [:show, :edit, :update, :destroy]

  # GET /weight_details
  # GET /weight_details.json
  def index
    @weight_details = WeightDetail.all
  end

  # GET /weight_details/1
  # GET /weight_details/1.json
  def show
  end

  # GET /weight_details/new
  def new
    @weight_detail = WeightDetail.new
  end

  # GET /weight_details/1/edit
  def edit
  end

  # POST /weight_details
  # POST /weight_details.json
  def create
    @weight_detail = WeightDetail.new(weight_detail_params)

    respond_to do |format|
      if @weight_detail.save
        format.html { redirect_to @weight_detail, notice: 'Weight detail was successfully created.' }
        format.json { render :show, status: :created, location: @weight_detail }
      else
        format.html { render :new }
        format.json { render json: @weight_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_details/1
  # PATCH/PUT /weight_details/1.json
  def update
    respond_to do |format|
      if @weight_detail.update(weight_detail_params)
        format.html { redirect_to @weight_detail, notice: 'Weight detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_detail }
      else
        format.html { render :edit }
        format.json { render json: @weight_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_details/1
  # DELETE /weight_details/1.json
  def destroy
    @weight_detail.destroy
    respond_to do |format|
      format.html { redirect_to weight_details_url, notice: 'Weight detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_detail
      @weight_detail = WeightDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_detail_params
      params.require(:weight_detail).permit(:reception_point, :reception_status, :harvest, :client, :reception_date, :type_of_vehicle, :plate, :driver, :remission_number, :procedence, :receipt, :waste_in_transit, :pledgee)
    end
end
