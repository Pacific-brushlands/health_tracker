class ExerciseTask < ActiveRecord::Base
  def self.cal_total
    self.all.reduce(0) {|sum, exercise| sum + exercise.cals_burned}
  end
end
