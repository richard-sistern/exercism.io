require 'minitest/autorun'
require_relative 'two_fer'

# Common test data version: 1.2.0 4fc1acb
class TwoFerTest < Minitest::Test
  def test_no_name_given
    assert_equal "One for you, one for me.", TwoFer.two_fer
    assert_equal "One for you, one for me.", TwoFer.two_fer_note
    assert_equal "One for you, one for me.", TwoFer.two_fer_sprintf
    assert_equal "One for you, one for me.", TwoFer.two_fer_interpolation
  end

  def test_a_name_given
    assert_equal "One for Alice, one for me.", TwoFer.two_fer("Alice")
    assert_equal "One for Alice, one for me.", TwoFer.two_fer_note("Alice")
    assert_equal "One for Alice, one for me.", TwoFer.two_fer_sprintf("Alice")
    assert_equal "One for Alice, one for me.", TwoFer.two_fer_interpolation("Alice")
  end

  def test_another_name_given
    assert_equal "One for Bob, one for me.", TwoFer.two_fer("Bob")
    assert_equal "One for Bob, one for me.", TwoFer.two_fer_note("Bob")
    assert_equal "One for Bob, one for me.", TwoFer.two_fer_sprintf("Bob")
    assert_equal "One for Bob, one for me.", TwoFer.two_fer_interpolation("Bob")
  end
end
