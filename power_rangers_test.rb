gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'power_ranger'

class PowerRangerTest < Minitest::Test

  def test_it_can_make_a_power_ranger
    ranger = PowerRanger.new("Pink Ranger")
    assert_instance_of PowerRanger, ranger
  end

  def test_ranger_has_a_name
    skip
    ranger = PowerRanger.new("Blue Ranger")
    assert_equal "Blue Ranger", ranger.name
  end

  def test_ranger_has_karate_skills_by_default
    skip
    ranger = PowerRanger.new("Yellow Ranger")
    assert_equal "Karate", ranger.skills
  end

  def test_ranger_can_have_other_skills
    skip
    ranger = PowerRanger.new("Green Ranger", "Sword Skills")
    assert_equal "Sword Skills", ranger.skills
  end

  def test_rangers_are_basic_rangers_by_default
    skip
    ranger = PowerRanger.new("Yellow Ranger")
    assert_equal "Basic Ranger", ranger.rank
  end

  def test_red_ranger_is_rank_of_team_captain_by_default
    skip
    ranger = PowerRanger.new("Red Ranger")
    assert_equal "Team Captain", ranger.rank
  end

  def test_ranger_is_energetic_by_default
    skip
    ranger = PowerRanger.new("Black Ranger")
    assert_equal true, ranger.energetic?
    assert ranger.energetic?
  end

  def test_ranger_loses_energy_after_a_fight
    skip
    ranger = PowerRanger.new("White Ranger")

    assert ranger.energetic?

    ranger.fight

    assert_equal false, ranger.energetic?
    refute ranger.energetic?
  end
end
