json.array!(@activities) do |activity|
  json.extract! activity, :id, :k_indactivities_id, :user_id, :level
  json.url activity_url(activity, format: :json)
end
