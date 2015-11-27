json.array!(@partos) do |parto|
  json.extract! parto, :id, :animal_id, :fecha_parto, :codigo_nacido
  json.url parto_url(parto, format: :json)
end
