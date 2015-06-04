json.array!(@exercise_tasks) do |exercise_task|
  json.extract! exercise_task, :id, :exercise_type_id, :cals_burned, :exercise_on
  json.url exercise_task_url(exercise_task, format: :json)
end
