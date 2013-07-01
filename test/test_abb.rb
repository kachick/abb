require_relative 'test_helper'

class TestAbb < Test::Unit::TestCase
  
  def test_normaly
    assert_equal 'ggl', Abb.fold('google')
    assert_equal 'ggl', 'google'.abb
    assert_equal 'Jpn', 'Japan'.abb
    assert_equal 'ASCII', 'American Standard Code for Information Interchange'.abb
  end

end
