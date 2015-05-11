json.array!(@categoris) do |categori|
  json.extract! categori, :id, :name
  json.url categori_url(categori, format: :json)
end
