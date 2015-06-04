require 'test_helper'

class CalTest < ActiveSupport::TestCase

  test "total calories" do
    assert 302, Cal.total 
  end

end
