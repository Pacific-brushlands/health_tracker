class ExerciseType < ActiveRecord::Base
  has_many :exercise_tasks, foreign_key: :exercise_type_id
end
