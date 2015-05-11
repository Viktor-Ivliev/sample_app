json.array!(@orders) do |order|
  json.extract! order, :id, :name, :date_order, :client_id
  json.url order_url(order, format: :json)
end
