json.array!(@exercise_types) do |exercise_type|
  json.extract! exercise_type, :id, :type_is
  json.url exercise_type_url(exercise_type, format: :json)
end
