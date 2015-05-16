json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :Status_of_implementation_id, :assignment_comment, :time_word
  json.url assignment_url(assignment, format: :json)
end
