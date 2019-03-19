class ReceptionStatusesController < ApplicationController
  before_action :set_reception_status, only: [:show, :edit, :update, :destroy]

  # GET /reception_statuses
  # GET /reception_statuses.json
  def index
    @reception_statuses = ReceptionStatus.all
  end

  # GET /reception_statuses/1
  # GET /reception_statuses/1.json
  def show
  end

  # GET /reception_statuses/new
  def new
    @reception_status = ReceptionStatus.new
  end

  # GET /reception_statuses/1/edit
  def edit
  end

  # POST /reception_statuses
  # POST /reception_statuses.json
  def create
    @reception_status = ReceptionStatus.new(reception_status_params)

    respond_to do |format|
      if @reception_status.save
        format.html { redirect_to @reception_status, notice: 'Reception status was successfully created.' }
        format.json { render :show, status: :created, location: @reception_status }
      else
        format.html { render :new }
        format.json { render json: @reception_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reception_statuses/1
  # PATCH/PUT /reception_statuses/1.json
  def update
    respond_to do |format|
      if @reception_status.update(reception_status_params)
        format.html { redirect_to @reception_status, notice: 'Reception status was successfully updated.' }
        format.json { render :show, status: :ok, location: @reception_status }
      else
        format.html { render :edit }
        format.json { render json: @reception_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reception_statuses/1
  # DELETE /reception_statuses/1.json
  def destroy
    @reception_status.destroy
    respond_to do |format|
      format.html { redirect_to reception_statuses_url, notice: 'Reception status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reception_status
      @reception_status = ReceptionStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reception_status_params
      params.require(:reception_status).permit(:name)
    end
end
