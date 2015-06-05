class ExerciseTask < ActiveRecord::Base
  belongs_to :exercise_type

  def self.cal_total
    self.all.reduce(0) {|sum, exercise| sum + exercise.cals_burned}
  end

  def self.day_burn_total
    cals_today = self.select do |e|
      if e.exercise_on == Date.today
        e.cals_burned
      end
    end
    cals_today.reduce(0) {|sum, exercise| sum + exercise.cals_burned}
  end

  def self.most_cals_burned_for_an_exercise_type
    self.order(:cals_burned).last
  end
end
