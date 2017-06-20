gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'power_puff_girls'

class PowerPuffGirlsTest < Minitest::Test

  def test_it_can_make_a_powerpuff_girl
    hero = PowerPuffGirl.new("Blossom")
    assert_instance_of PowerPuffGirl, hero
  end

  def test_it_can_have_a_name
    skip
    hero = PowerPuffGirl.new("Bullet the Powerpuff squirrel")
    assert_equal "Bullet the Powerpuff squirrel", hero.name
  end

  def test_it_is_heroic_by_default
    skip
    hero = PowerPuffGirl.new("Bubbles")
    assert_equal "Heroic", hero.personality
    assert_equal true, hero.heroic?
    assert hero.heroic?
  end

  def test_it_does_not_have_to_be_heroic
    skip
    hero = PowerPuffGirl.new("Princess Morbucks", "Evil")
    assert_equal "Evil", hero.personality
    assert_equal false, hero.heroic?
    refute hero.heroic?
  end

  def test_hero_says_heroic_stuff_when_talking_to_bad_guys
    skip
    hero = PowerPuffGirl.new("Buttercup")
    talk = "Stop in the name of Justice!"
    assert_equal "!!! HALT, EVIL DOER !!! Stop in the name of Justice!", hero.say_to_bad_guy(talk)
  end

  def test_hero_says_other_heroic_stuff_when_talking_to_bad_guys
    skip
    hero = PowerPuffGirl.new("Buttercup")
    talk = "You're under arrest!"
    assert_equal "!!! HALT, EVIL DOER !!! You're under arrest!", hero.say_to_bad_guy(talk)
  end

  def test_hero_says_heroic_stuff_when_talking_to_normal_people
    skip
    hero = PowerPuffGirl.new("Bunny the 4th Powerpuff Girl")
    talk = "How can I help you?"
    assert_equal "*** Hello Citizen! How can I help you? ***", hero.say_to_normal_people(talk)
  end

  def test_hero_says_other_heroic_stuff_when_talking_to_normal_people
    skip
    hero = PowerPuffGirl.new("Bunny the 4th Powerpuff Girl")
    talk = "I'll save your kitty!"
    assert_equal "*** Hello Citizen! I'll save your kitty! ***", hero.say_to_normal_people(talk)
  end
end
