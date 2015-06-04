require 'test_helper'

class ExerciseTaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "total calories burned" do
    assert_equal 2, ExerciseTask.cal_total
  end
end
