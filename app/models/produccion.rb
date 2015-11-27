class Produccion < ActiveRecord::Base
  belongs_to :animal
  has_many :calendario_producciones
  
end
