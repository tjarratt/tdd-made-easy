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
end
