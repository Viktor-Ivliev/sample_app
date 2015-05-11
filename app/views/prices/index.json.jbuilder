json.array!(@prices) do |price|
  json.extract! price, :id, :value, :data_price, :id_service
  json.url price_url(price, format: :json)
end
