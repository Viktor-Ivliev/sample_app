json.array!(@blocks) do |block|
  json.extract! block, :id, :name, :categori_id
  json.url block_url(block, format: :json)
end
