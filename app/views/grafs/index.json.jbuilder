json.array!(@grafs) do |graf|
  json.extract! graf, :id, :date_start, :date_end, :table_service_order_id
  json.url graf_url(graf, format: :json)
end
