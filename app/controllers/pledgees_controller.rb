class PledgeesController < ApplicationController
  before_action :set_pledgee, only: [:show, :edit, :update, :destroy]

  # GET /pledgees
  # GET /pledgees.json
  def index
    @pledgees = Pledgee.all
  end

  # GET /pledgees/1
  # GET /pledgees/1.json
  def show
  end

  # GET /pledgees/new
  def new
    @pledgee = Pledgee.new
  end

  # GET /pledgees/1/edit
  def edit
  end

  # POST /pledgees
  # POST /pledgees.json
  def create
    @pledgee = Pledgee.new(pledgee_params)

    respond_to do |format|
      if @pledgee.save
        format.html { redirect_to @pledgee, notice: 'Pledgee was successfully created.' }
        format.json { render :show, status: :created, location: @pledgee }
      else
        format.html { render :new }
        format.json { render json: @pledgee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pledgees/1
  # PATCH/PUT /pledgees/1.json
  def update
    respond_to do |format|
      if @pledgee.update(pledgee_params)
        format.html { redirect_to @pledgee, notice: 'Pledgee was successfully updated.' }
        format.json { render :show, status: :ok, location: @pledgee }
      else
        format.html { render :edit }
        format.json { render json: @pledgee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pledgees/1
  # DELETE /pledgees/1.json
  def destroy
    @pledgee.destroy
    respond_to do |format|
      format.html { redirect_to pledgees_url, notice: 'Pledgee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pledgee
      @pledgee = Pledgee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pledgee_params
      params.require(:pledgee).permit(:name)
    end
end
