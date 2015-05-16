json.array!(@status_of_implementations) do |status_of_implementation|
  json.extract! status_of_implementation, :id, :order_id, :date_status, :status
  json.url status_of_implementation_url(status_of_implementation, format: :json)
end
