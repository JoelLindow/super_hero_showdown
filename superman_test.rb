gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'superman'

class SupermanTest < Minitest::Test

  def test_it_exists
    hero = Superman.new("Superman", "Clark Kent")

    assert_instance_of Superman, hero
  end

  def test_it_has_a_secret_identity
    skip
    hero = Superman.new("Superman", "Clark Kent")

    assert_equal "Superman", hero.name
    assert_equal "Clark Kent", hero.secret_identity
  end

  def test_superman_has_access_to_the_jail
    skip
    hero = Superman.new("Superman", "Clark Kent")

    assert_equal [], hero.jailed_enemies
  end

  def test_superman_can_send_bad_guys_to_jail
    skip
    hero = Superman.new("Superman", "Clark Kent")
    hero.send_enemy_to_jail("Lex Luthor")

    assert_equal ["Lex Luthor"], hero.jailed_enemies
  end

  def test_superman_knows_how_many_enemies_are_in_jail
    skip
    hero = Superman.new("Superman", "Clark Kent")

    assert_equal 0, hero.how_many_enemies_in_jail?

    hero.send_enemy_to_jail("Lex Luthor")

    assert_equal 1, hero.how_many_enemies_in_jail?

    hero.send_enemy_to_jail("General Zod")
    hero.send_enemy_to_jail("Bizzaro")

    assert_equal 3, hero.how_many_enemies_in_jail?
    assert_equal ["Lex Luthor", "General Zod", "Bizzaro"], hero.jailed_enemies
  end

  def test_superman_can_get_an_alphebetized_list_of_jailed_enemies
    skip
    hero = Superman.new("Superman", "Clark Kent")
    hero.send_enemy_to_jail("Lex Luthor")
    hero.send_enemy_to_jail("General Zod")
    hero.send_enemy_to_jail("Bizzaro")
    hero.send_enemy_to_jail("Mister Mxyzptlk")

    assert_equal(
                ["Lex Luthor", "General Zod", "Bizzaro", "Mister Mxyzptlk"],
                hero.jailed_enemies
                )
    assert_equal(
                ["Bizzaro", "General Zod", "Lex Luthor", "Mister Mxyzptlk"],
                hero.enemies_in_jail
                )
  end

  def test_superman_can_release_oldest_jailed_enemy
    skip
    hero = Superman.new("Superman", "Clark Kent")
    hero.send_enemy_to_jail("Lex Luthor")
    hero.send_enemy_to_jail("General Zod")
    hero.send_enemy_to_jail("Bizzaro")
    hero.send_enemy_to_jail("Mister Mxyzptlk")

    assert_equal(
                ["Lex Luthor", "General Zod", "Bizzaro", "Mister Mxyzptlk"],
                hero.jailed_enemies
                )

    hero.release_oldest_prisoner

    assert_equal(
                ["General Zod", "Bizzaro", "Mister Mxyzptlk"],
                hero.jailed_enemies
                )
  end

  def test_superman_can_release_newest_jailed_enemy
    skip
    hero = Superman.new("Superman", "Clark Kent")
    hero.send_enemy_to_jail("Lex Luthor")
    hero.send_enemy_to_jail("General Zod")
    hero.send_enemy_to_jail("Bizzaro")
    hero.send_enemy_to_jail("Mister Mxyzptlk")

    assert_equal(
                ["Lex Luthor", "General Zod", "Bizzaro", "Mister Mxyzptlk"],
                hero.jailed_enemies
                )

    hero.release_newest_prisoner

    assert_equal(
                ["Lex Luthor", "General Zod", "Bizzaro"],
                hero.jailed_enemies
                )
  end
end
