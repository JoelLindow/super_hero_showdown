# HASH exercise to soon be written!!!!!
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'batman'

class BatmanTest < Minitest::Test

  def test_batman_exists
    hero = Batman.new("Lewis Wilson", :Grayscale)

    assert_instance_of Batman, hero
  end

  def test_batman_has_an_actor_name
    skip
    hero = Batman.new("Adam West", :Blue)

    assert_equal "Adam West", hero.name
  end

  def test_batman_has_an_color
    skip
    hero = Batman.new("Adam West", :Blue)

    assert_equal :Blue, hero.color
  end

  def test_batman_has_a_bat_mobile_by_default
    skip
      hero = Batman.new("Michael Keaton", :Black)

      assert_equal "Bat-Mobile", hero.batcave["Car"]
  end

  def test_batman_has_no_sidekick_by_default
    skip
    hero = Batman.new("Val Kilmer", :Black)

    assert_equal [], hero.sidekicks
  end

  def test_batman_can_add_vehicles_to_his_collection
    skip
    hero = Batman.new("George Clooney", :Black)
    hero.add_vehicle("Boat", "Bat-Boat")

    assert_equal "Bat-Boat", hero.batcave["Boat"]
  end

  def test_batman_can_add_sidekicks
    skip
    hero = Batman.new("Christian Bale", :Black)

    assert_equal [], hero.sidekicks

    hero.add_sidekick("Robin")

    assert_equal ["Robin"], hero.sidekicks
  end

skip
  def test_batman_can_ask_what_type_of_vehicle_it_is_by_bat_vehicle_name
    hero = Batman.new("Ben Afflec", :Gray)
    hero.add_vehicle("Pogo Stick", "Bat-Hopper")
    hero.add_vehicle("Unicycle", "Bat-Uni")

    assert_equal "Pogo Stick", hero.vehicle_type?("Bat-Hopper")
    assert_equal "Unicycle", hero.vehicle_type?("Bat-Uni")
  end
end
