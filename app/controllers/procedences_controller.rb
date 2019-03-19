class ProcedencesController < ApplicationController
  before_action :set_procedence, only: [:show, :edit, :update, :destroy]

  # GET /procedences
  # GET /procedences.json
  def index
    @procedences = Procedence.all
  end

  # GET /procedences/1
  # GET /procedences/1.json
  def show
  end

  # GET /procedences/new
  def new
    @procedence = Procedence.new
  end

  # GET /procedences/1/edit
  def edit
  end

  # POST /procedences
  # POST /procedences.json
  def create
    @procedence = Procedence.new(procedence_params)

    respond_to do |format|
      if @procedence.save
        format.html { redirect_to @procedence, notice: 'Procedence was successfully created.' }
        format.json { render :show, status: :created, location: @procedence }
      else
        format.html { render :new }
        format.json { render json: @procedence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedences/1
  # PATCH/PUT /procedences/1.json
  def update
    respond_to do |format|
      if @procedence.update(procedence_params)
        format.html { redirect_to @procedence, notice: 'Procedence was successfully updated.' }
        format.json { render :show, status: :ok, location: @procedence }
      else
        format.html { render :edit }
        format.json { render json: @procedence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedences/1
  # DELETE /procedences/1.json
  def destroy
    @procedence.destroy
    respond_to do |format|
      format.html { redirect_to procedences_url, notice: 'Procedence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedence
      @procedence = Procedence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedence_params
      params.require(:procedence).permit(:name, :client)
    end
end
