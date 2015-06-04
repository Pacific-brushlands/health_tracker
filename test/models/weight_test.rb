require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "assert weights entries" do
    assert_equal 2, Weight.count
  end
end
