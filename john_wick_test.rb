gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'john_wick'
require 'pry'

class JohnWickTest < Minitest::Test

  def test_john_wick_exists
    john = JohnWick.new

    assert_instance_of JohnWick, john
  end

  def test_john_has_the_name_john_wick_by_default
    john = JohnWick.new

    assert_equal "John Wick", john.name
  end

  def test_john_is_retired_by_default
    john = JohnWick.new

    assert_equal "Retired", john.career
    assert_equal true, john.retired?
    assert john.retired?
  end

  def test_john_is_not_triggered_by_most_crimes_toward_him
    john = JohnWick.new

    assert_equal 0, john.times_triggered

    john.victimized("Call his momma' fat")

    assert_equal 0, john.times_triggered
  end

  def test_john_has_mellow_mood_by_default
    john = JohnWick.new

    assert_equal "Mellow", john.mood?
  end

  def test_a_specific_crime_triggers_john
    john = JohnWick.new

    john.victimized("wife killed")

    assert_equal 1, john.times_triggered
  end

  def test_being_triggered_changes_johns_mood
    john = JohnWick.new

    john.victimized("wife killed")

    assert_equal "Depressed", john.mood?
  end

  def test_johns_mood_can_become_increasingly_worse_with_specific_crimes
    john = JohnWick.new

    john.victimized("wife killed")
    john.victimized("stole his parking spot")

    assert_equal 1, john.times_triggered
    assert_equal "Depressed", john.mood?

    john.victimized("flaming bag of dog poop on porch")
    john.victimized("dog killed")

    assert_equal 2, john.times_triggered
    assert_equal "Upset", john.mood?

    john.victimized("car stolen")

    assert_equal 3, john.times_triggered
    assert_equal "Angry", john.mood?
  end

  def test_if_the_3_qualifying_crimes_are_committed_john_comes_out_of_retirement
    john = JohnWick.new
    john.victimized("wife killed")
    john.victimized("dog killed")

    assert_equal "Retired", john.career
    assert_equal true, john.retired?
    assert john.retired?

    john.victimized("car stolen")

    assert_equal "Boogeyman", john.career
    assert_equal false, john.retired?
    refute john.retired?
  end

  def test_john_can_seek_revenge_only_once_he_is_angry
    john = JohnWick.new
    john.victimized("wife killed")
    john.victimized("dog killed")

    assert john.retired?
    assert_equal "I'm just not ready for revenge", john.wants_revenge?

    john.victimized("car stolen")

    refute john.retired?
    assert_equal "It's time for REVENGE!", john.wants_revenge?
  end
end
