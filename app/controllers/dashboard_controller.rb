class DashboardController < ApplicationController
  helper DashboardHelper
  def index
    @all_exercises = ExerciseTask.all
    @all_cals = Cal.all
    @worst_enemy = Cal.worst_enemy
    @net_cals = @all_cals.day_total - @all_exercises.day_burn_total
    @exercise_types = ExerciseType.all
  end
end
