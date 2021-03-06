#!/usr/bin/env ruby -w

require 'test/unit'

require_relative 'solutions/p001_multiples.rb'
require_relative 'solutions/p002_even_fib.rb'
require_relative 'solutions/p003_largest_prime.rb'

class TestSolutions < Test::Unit::TestCase
  def test_p001
    assert_equal(23, P001::run(10))
  end

  def test_p002
    assert_equal(44, P002::run(90))
  end

  def test_p003
    assert_equal(29, P003::run(13195))
    assert_equal(29, P003::run2(13195))
  end
end
