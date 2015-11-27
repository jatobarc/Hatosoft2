class DashboardController < ApplicationController
  
  before_action :authenticate_user!
  layout 'dashboard'
  def index

  end

  def registro_global
  	@producciones =  Produccion.all
  	@animales = Animal.all
  end

  def produccion_global
  	@producciones = Produccion.all
  end

  def nutricion_global
  	@nutriciones = Nutricion.all
  end
end
