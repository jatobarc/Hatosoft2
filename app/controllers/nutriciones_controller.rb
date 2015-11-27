class NutricionesController < ApplicationController
  before_action :set_nutricion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  layout 'dashboard'
  # GET /nutriciones
  # GET /nutriciones.json
  def index
    @nutriciones = Nutricion.all
  end

  # GET /nutriciones/1
  # GET /nutriciones/1.json
  def show
  end

  # GET /nutriciones/new
  def new
    @nutricion = Nutricion.new
    @animales = Animal.all
  end

  # GET /nutriciones/1/edit
  def edit
    @animales = Animal.all
  end

  # POST /nutriciones
  # POST /nutriciones.json
  def create
    @nutricion = Nutricion.new(nutricion_params)

    respond_to do |format|
      if @nutricion.save
        format.html { redirect_to @nutricion, notice: 'Nutricion was successfully created.' }
        format.json { render :show, status: :created, location: @nutricion }
      else
        format.html { render :new }
        format.json { render json: @nutricion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutriciones/1
  # PATCH/PUT /nutriciones/1.json
  def update
    respond_to do |format|
      if @nutricion.update(nutricion_params)
        format.html { redirect_to @nutricion, notice: 'Nutricion was successfully updated.' }
        format.json { render :show, status: :ok, location: @nutricion }
      else
        format.html { render :edit }
        format.json { render json: @nutricion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutriciones/1
  # DELETE /nutriciones/1.json
  def destroy
    @nutricion.destroy
    respond_to do |format|
      format.html { redirect_to nutriciones_url, notice: 'Nutricion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutricion
      @nutricion = Nutricion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutricion_params
      params.require(:nutricion).permit(:animal_id, :mes_nutricion)
    end
end
