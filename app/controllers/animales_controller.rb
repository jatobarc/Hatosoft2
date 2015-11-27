class AnimalesController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  layout 'dashboard'
  # GET /animales
  # GET /animales.json
  def index
    @animales = Animal.all
  end

  # GET /animales/1
  # GET /animales/1.json
  def show
    @ani = Produccion.where(['dia_produccion > ?', DateTime.now])
  end

  # GET /animales/new
  def new
    @animal = Animal.new
  end

  # GET /animales/1/edit
  def edit
  end

  # POST /animales
  # POST /animales.json
  def create

    
    @animal = Animal.new(animal_params)
    ultimo = Animal.last
    if ultimo
      @animal.codigo = %'#{current_user.iniciales.upcase}#{sprintf '%05d', ultimo.id +=1}'
    else
      @animal.codigo = %'#{current_user.iniciales.upcase}#{sprintf '%05d', 1}'
    end

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end

    
  end

  # PATCH/PUT /animales/1
  # PATCH/PUT /animales/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animales/1
  # DELETE /animales/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animales_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:nombre, :codigo, :fecha_de_nacimiento, :raza, :genero, :user_id)
    end
end
