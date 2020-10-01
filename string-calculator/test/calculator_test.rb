gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/calculator'

class CalculatorTest < Minitest::Test
  def test_empty_string_equals_zero
    assert_equal 0, Calculator::add("")
  end
end
