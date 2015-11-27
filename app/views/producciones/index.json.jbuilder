json.array!(@producciones) do |produccion|
  json.extract! produccion, :id, :animal_id, :mes_produccion
  json.url produccion_url(produccion, format: :json)
end
