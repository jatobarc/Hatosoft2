json.array!(@animales) do |animal|
  json.extract! animal, :id, :nombre, :codigo, :fecha_de_nacimiento, :raza, :genero
  json.url animal_url(animal, format: :json)
end
