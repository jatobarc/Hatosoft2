class CalendarioNutricionesController < ApplicationController
	before_action :authenticate_user!
  def create
    @nutricion = Nutricion.find(params[:nutricion_id])
    @calendario_nutricion = @nutricion.calendario_nutriciones.create(calendario_nutricion_params)
    redirect_to nutricion_path(@nutricion)
  end
 
  private
    def calendario_nutricion_params
      params.require(:calendario_nutricion).permit(:dia, :kilogramos)
    end
end
