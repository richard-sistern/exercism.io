require 'minitest/autorun'
require_relative 'resistor_color_duo'

# Common test data version: 2.1.0 00dda3a
class ResistorColorDuoTest < Minitest::Test
  def test_black_and_black
    assert_equal 00, ResistorColorDuo.value(["black", "black"])
  end
end
