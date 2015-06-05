require 'test_helper'

class ExerciseTaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "total calories burned" do
    assert_equal 663, ExerciseTask.cal_total
  end

  test "cals burned today" do
    assert_equal 583, ExerciseTask.day_burn_total
  end

  test "total calories for each exercise" do
    assert_equal 2,
    ExerciseTask.most_cals_burned_for_an_exercise_type.exercise_type_id
  end
end
