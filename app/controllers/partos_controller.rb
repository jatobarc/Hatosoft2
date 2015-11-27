class PartosController < ApplicationController
  before_action :set_parto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  layout 'dashboard'
  # GET /partos
  # GET /partos.json
  def index
    @partos = Parto.all
  end

  # GET /partos/1
  # GET /partos/1.json
  def show
  end

  # GET /partos/new
  def new
    @parto = Parto.new
    @madres = Animal.where(:genero => 'F')
    @padres = Animal.where(:genero => 'M')
    @animal = Animal.new
  end

  # GET /partos/1/edit
  def edit
    @parto = Parto.new
    @madres = Animal.where(:genero => 'F')
    @padres = Animal.where(:genero => 'M')
    @animales = Animal.all
  end

  # POST /partos
  # POST /partos.json
  def create
    @parto = Parto.new(parto_params)
    ultimo = Animal.last

    
    #Crea un nuevo animal apartir de los datos del parto
    Animal.create(:nombre  => parto_params[:nombre],
     :fecha_de_nacimiento => parto_params[:fecha_parto], 
     :codigo => %'#{current_user.iniciales.upcase}#{sprintf '%05d', ultimo.id +=1}',
      :raza => parto_params[:raza], :genero => parto_params[:genero], 
      :user_id => current_user.id )

      

    @parto.codigo_nacido = %'#{current_user.iniciales.upcase}#{sprintf '%05d', ultimo.id +=1}'


    respond_to do |format|
      if @parto.save
        format.html { redirect_to @parto, notice: 'Parto was successfully created.' }
        format.json { render :show, status: :created, location: @parto }
      else
        format.html { render :new }
        format.json { render json: @parto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partos/1
  # PATCH/PUT /partos/1.json
  def update
    respond_to do |format|
      if @parto.update(parto_params)
        format.html { redirect_to @parto, notice: 'Parto was successfully updated.' }
        format.json { render :show, status: :ok, location: @parto }
      else
        format.html { render :edit }
        format.json { render json: @parto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partos/1
  # DELETE /partos/1.json
  def destroy
    @parto.destroy
    respond_to do |format|
      format.html { redirect_to partos_url, notice: 'Parto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parto
      @parto = Parto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parto_params
      params.require(:parto).permit(:animal_id, :fecha_parto, :codigo_nacido, :nombre, :raza, :genero, :padre_id)
    end
end
