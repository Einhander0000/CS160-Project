json.array!(@goals) do |goal|
  json.extract! goal, :id, :Goal, :Description, :Date, :DueDate, :Steps
  json.url goal_url(goal, format: :json)
end
