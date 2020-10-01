gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/calculator'

class CalculatorTest < Minitest::Test
  def test_empty_string_equals_zero
    assert_equal 0, Calculator::add("")
  end

  def test_single_number_equals_itself
    assert_equal 1, Calculator::add("1")
  end

  def test_sum_of_two_numbers
    assert_equal 3, Calculator::add("1,2")
  end

  def test_sum_of_many_comma_separated_numbers
    assert_equal 55, Calculator::add("1,2,3,4,5,6,7,8,9,10")
  end
end
