class Animal < ActiveRecord::Base
	has_many :partos
	has_many :producciones
	has_many :calendario_producciones
	RAZA = [nil, 'Jersey', 'Braham', 'Holtein', 'Normando']
	GENERO	 = [nil, 'M', 'F']
	belongs_to :user

	has_many :animales

	
end
