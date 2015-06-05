require 'test_helper'

class CalTest < ActiveSupport::TestCase

  test "total calories" do
    assert 302, Cal.total
  end

  test "cal total for the day" do
    assert 362, Cal.day_total
  end

end
