class DamagesController < ApplicationController
  before_action :set_damage, only: [:show, :edit, :update, :destroy]

  # GET /damages
  # GET /damages.json
  def index
    @damages = Damage.all
  end

  # GET /damages/1
  # GET /damages/1.json
  def show
  end

  # GET /damages/new
  def new
    @damage = Damage.new
  end

  # GET /damages/1/edit
  def edit
  end

  # POST /damages
  # POST /damages.json
  def create
    @damage = Damage.new(damage_params)

    respond_to do |format|
      if @damage.save
        format.html { redirect_to @damage, notice: 'Damage was successfully created.' }
        format.json { render :show, status: :created, location: @damage }
      else
        format.html { render :new }
        format.json { render json: @damage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damages/1
  # PATCH/PUT /damages/1.json
  def update
    respond_to do |format|
      if @damage.update(damage_params)
        format.html { redirect_to @damage, notice: 'Damage was successfully updated.' }
        format.json { render :show, status: :ok, location: @damage }
      else
        format.html { render :edit }
        format.json { render json: @damage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damages/1
  # DELETE /damages/1.json
  def destroy
    @damage.destroy
    respond_to do |format|
      format.html { redirect_to damages_url, notice: 'Damage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damage
      @damage = Damage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damage_params
      params.require(:damage).permit(:name)
    end
end
