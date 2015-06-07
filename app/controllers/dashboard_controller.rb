class DashboardController < ApplicationController
  helper DashboardHelper
  def index
    @all_exercises = ExerciseTask.all
    @all_cals = Cal.all
    @worst_enemy = Cal.worst_enemy
    @net_cals = @all_cals.day_total - @all_exercises.day_burn_total
    most_calories_burned_exercise_type_id = ExerciseTask.most_cals_burned_for_an_exercise_type.exercise_type_id
    @most_calories_burned_type = ExerciseType.find(most_calories_burned_exercise_type_id).type_is
    @exercise_types = ExerciseType.all
  end
end
