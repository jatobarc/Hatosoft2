class HigienesController < ApplicationController
  before_action :set_higiene, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  layout 'dashboard'
  # GET /higienes
  # GET /higienes.json
  def index
    @higienes = Higiene.all
  end

  # GET /higienes/1
  # GET /higienes/1.json
  def show
  end

  # GET /higienes/new
  def new
    @higiene = Higiene.new
  end

  # GET /higienes/1/edit
  def edit
  end

  # POST /higienes
  # POST /higienes.json
  def create
    @higiene = Higiene.new(higiene_params)

    respond_to do |format|
      if @higiene.save
        format.html { redirect_to @higiene, notice: 'Higiene was successfully created.' }
        format.json { render :show, status: :created, location: @higiene }
      else
        format.html { render :new }
        format.json { render json: @higiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /higienes/1
  # PATCH/PUT /higienes/1.json
  def update
    respond_to do |format|
      if @higiene.update(higiene_params)
        format.html { redirect_to @higiene, notice: 'Higiene was successfully updated.' }
        format.json { render :show, status: :ok, location: @higiene }
      else
        format.html { render :edit }
        format.json { render json: @higiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /higienes/1
  # DELETE /higienes/1.json
  def destroy
    @higiene.destroy
    respond_to do |format|
      format.html { redirect_to higienes_url, notice: 'Higiene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_higiene
      @higiene = Higiene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def higiene_params
      params.require(:higiene).permit(:fecha, :codigo, :elemento, :material, :sustancia_aseo, :sustancia_desinfectante, :uso, :dosis, :higiene_manana, :higiene_tarde)
    end
end
