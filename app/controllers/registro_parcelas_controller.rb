class RegistroParcelasController < ApplicationController
	before_action :authenticate_user!
  def create
    @parcela = Parcela.find(params[:parcela_id])
    @registro_parcelas = @parcela.registro_parcelas.create(registro_parcela_params)
    redirect_to parcela_path(@parcela)
  end
 
  private
    def registro_parcela_params
      params.require(:registro_parcela).permit(:fecha_entrada, :fecha_salida, :fecha_proxima_parte, :numero_de_vacas)
    end
end
