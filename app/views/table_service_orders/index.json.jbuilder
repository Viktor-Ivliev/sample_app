json.array!(@table_service_orders) do |table_service_order|
  json.extract! table_service_order, :id, :order_id, :service_id, :price_fact, :info
  json.url table_service_order_url(table_service_order, format: :json)
end
