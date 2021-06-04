# coding: us-ascii
# frozen_string_literal: true

require_relative 'helper'

class TestAbb < Test::Unit::TestCase
  class Example
    using Abb::Refinements

    def abb(string)
      string.abb
    end
  end

  def test_abb
    assert_equal 'ggl', Abb.fold('google')
    assert_equal 'Jpn', Abb.fold('Japan')
    assert_equal 'ASCII', Abb.fold('American Standard Code for Information Interchange')
    assert_equal '', Abb.fold('')
    assert_equal '', Abb.fold(' a  b 42 ')

    assert_raises(ArgumentError) do
      Abb.fold(:google)
    end
  end

  def test_refinements
    assert_equal 'ggl', Example.new.abb('google')

    assert_raises(NoMethodError) do
      'google'.abb
    end
  end
end
