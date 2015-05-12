json.array!(@k_indactivities) do |k_indactivity|
  json.extract! k_indactivity, :id, :name
  json.url k_indactivity_url(k_indactivity, format: :json)
end
