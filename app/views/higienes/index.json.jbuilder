json.array!(@higienes) do |higiene|
  json.extract! higiene, :id, :fecha, :codigo, :elemento, :material, :sustancia_aseo, :sustancia_desinfectante, :uso, :dosis, :higiene_manana, :higiene_tarde
  json.url higiene_url(higiene, format: :json)
end
