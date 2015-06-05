require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "assert weights entries" do
    assert_equal 3, Weight.count
  end

  test "refute save for two weights on same day" do
    weight = Weight.new(amount: 180, weighed_on: 2015-06-07)
    assert_raises(NoMethodError) do
      weight.create!
    end
  end
end
