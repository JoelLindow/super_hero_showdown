gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/justice_league'

class JusticeLeagueTest < Minitest::Test

  def test_the_league_has_a_division
    jla = JusticeLeague.new("America")

    assert_equal "America", jla.chapter
  end

  def test_the_league_has_no_members_by_default
    skip
    jla = JusticeLeague.new("America")

    assert_equal [], jla.members

  end

  def test_can_add_a_new_league_member
    skip
    jla = JusticeLeague.new("America")
    hero = LeagueMember.new("Green Lantern", "Power Ring")
    jla.add_member(hero)

    assert_equal 1, jla.members.count
    assert_equal "Green Lantern", jla.members.first.name
    assert_equal "Power Ring", jla.members.first.equipment
  end

  def test_it_has_armory_of_all_members_equipment
    skip
    jla = JusticeLeague.new("America")
    hero_one = LeagueMember.new("Green Lantern", "Power Ring")
    jla.add_member(hero_one)
    hero_two = LeagueMember.new("Wonder Woman", "Laso of Truth")
    jla.add_member(hero_two)
    hero_three = LeagueMember.new("Batman", "Utility Belt")
    jla.add_member(hero_three)

    #use the .map enumarator to return a collection of equipment
    assert_equal 3, jla.members.count
    assert_equal ["Power Ring", "Laso of Truth", "Utility Belt"], jla.armory_contents?
  end
end
