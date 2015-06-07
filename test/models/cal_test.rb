require 'test_helper'

class CalTest < ActiveSupport::TestCase

  test "total calories" do
    assert_equal 822, Cal.total
  end

  test "cal total for the day" do
    assert_equal 302, Cal.day_total
  end

  test "description with the most calories" do
    assert_equal "hamburger", Cal.worst_enemy.description
  end
end
