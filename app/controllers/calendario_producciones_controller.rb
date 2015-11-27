class CalendarioProduccionesController < ApplicationController
	before_action :authenticate_user!
  def create
    @produccion = Produccion.find(params[:produccion_id])
    @calendario_producciones = @produccion.calendario_producciones.create(calendario_producciones_params)
    redirect_to produccion_path(@produccion)
  end
 
  private
    def calendario_producciones_params
      params.require(:calendario_produccion).permit(:dia, :manana, :tarde, :finca)
    end
end
