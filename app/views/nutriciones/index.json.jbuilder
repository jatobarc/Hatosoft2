json.array!(@nutriciones) do |nutricion|
  json.extract! nutricion, :id, :animal_id, :mes_nutricion
  json.url nutricion_url(nutricion, format: :json)
end
