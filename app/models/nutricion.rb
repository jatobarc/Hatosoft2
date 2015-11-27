class Nutricion < ActiveRecord::Base
  belongs_to :animal
  has_many :calendario_nutriciones
end
