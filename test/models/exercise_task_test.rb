require 'test_helper'

class ExerciseTaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "total calories burned" do
    assert_equal 142, ExerciseTask.cal_total
  end

  test "cals burned today" do
    assert_equal 62, ExerciseTask.day_burn_total
  end

  
end
