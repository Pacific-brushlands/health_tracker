class ExerciseTask < ActiveRecord::Base
  belongs_to :exercise_type
  
  def self.cal_total
    self.all.reduce(0) {|sum, exercise| sum + exercise.cals_burned}
  end
end
