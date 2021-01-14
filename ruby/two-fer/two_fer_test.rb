require 'minitest/autorun'
require_relative 'two_fer'

# Common test data version: 1.2.0 4fc1acb
class TwoFerTest < Minitest::Test
  def test_no_name_given
    assert_equal "One for you, one for me.", TwoFer.two_fer
  end

  def test_a_name_given
    assert_equal "One for Alice, one for me.", TwoFer.two_fer("Alice")
  end

  def test_another_name_given
    assert_equal "One for Bob, one for me.", TwoFer.two_fer("Bob")
  end

  def test_a_spanish_name_given
    assert_equal "Uno para el Jorge, uno para mí.", TwoFer.two_fer('Jorge', :Spanish)
  end

  def test_a_dutch_name_given
    assert_equal "Eén voor Bjorn, één voor mij.", TwoFer.two_fer('Bjorn', :Dutch)
  end
end
