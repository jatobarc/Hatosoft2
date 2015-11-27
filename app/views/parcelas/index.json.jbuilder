json.array!(@parcelas) do |parcela|
  json.extract! parcela, :id, :codigo, :area, :tipo_pasto
  json.url parcela_url(parcela, format: :json)
end
