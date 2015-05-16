json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :status_of_implementation_id, :succinctly, :time_word, :runtime, :status, :description, :report
  json.url assignment_url(assignment, format: :json)
end
