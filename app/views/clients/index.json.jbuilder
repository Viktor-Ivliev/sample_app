json.array!(@clients) do |client|
  json.extract! client, :id, :name, :tel, :email, :adress, :comments
  json.url client_url(client, format: :json)
end
