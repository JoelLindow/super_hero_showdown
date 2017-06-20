gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'captain_underpants'

class CaptainUnderpantsTest < Minitest::Test

  def test_it_exists
    hero = CaptainUnderpants.new("Captain Underpants", "Underpants", "Tra La La")

    assert_instance_of CaptainUnderpants, hero
  end

  def test_it_has_a_name
    skip
    hero = CaptainUnderpants.new("Captain Underpants", "Underpants", "Tra La La")

    assert_equal "Captain Underpants", hero.name
  end

  def test_it_has_a_costume
    skip
    hero = CaptainUnderpants.new("Captain Underpants", "Underpants", "Tra La La")

    assert_equal "Underpants", hero.costume
  end

  def test_it_has_a_catch_phrase
    skip
    hero = CaptainUnderpants.new("Captain Underpants", "Underpants", "Tra La La")

    assert_equal "Tra La La", hero.catchphrase
  end

  def test_it_can_tell_you_about_itself
    skip
    hero = CaptainUnderpants.new("Captain Underpants", "Underpants", "Tra La La")

    assert_equal "I'm Captain Underpants. I love to wear Underpants. Tra La La", hero.greeting
    end

  def test_it_can_be_a_different_hero_too
    skip
    hero = CaptainUnderpants.new("Captain Boxer Shorts", "Boxers", "Shoopty Woop")

    assert_equal "I'm Captain Boxer Shorts. I love to wear Boxers. Shoopty Woop", hero.greeting
  end
end
