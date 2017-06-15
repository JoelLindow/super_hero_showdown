gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'freakazoid'

class FreakazoidTest < Minitest::Test

  def test_it_exists
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_instance_of Freakazoid, freak
  end

  def test_it_has_a_name
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_equal "Dexter Douglas", freak.name
  end

  def test_it_has_a_computer
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_equal "IBM 286", freak.computer
    assert_equal true, freak.owns_computer?
  end

  def test_computer_has_pentium_chip_by_default_if_freak_has_computer
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_equal "Pentium Chip", freak.processor
    assert_equal true, freak.has_processor?
  end


  def test_freak_does_not_have_to_have_a_computer_or_chip
    skip
    freak = Freakazoid.new("Dexter Douglas")

    assert_nil freak.computer
    assert_equal false, freak.owns_computer?
    assert_nil freak.processor
    assert_equal false, freak.has_processor?
  end

  def test_computer_starts_with_pentium_chip_but_can_upgrade_to_pentacle_chip
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_equal "Pentium Chip", freak.processor

    freak.upgrade_to_pentacle_chip

    assert_equal "Pentacle Chip", freak.processor
  end

  def test_freak_can_not_become_freakazoid_without_computer
    skip
    freak = Freakazoid.new("Dexter Douglas")

    assert_equal "No Freak for you! You don't have a computer! Doodie!", freak.freak_out
  end

  def test_freak_can_not_become_freakazoid_without_pentacle_chip
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    assert_equal "No Freak for you! You don't have a pentacle chip!. Nut bunnies!", freak.freak_out
  end

  def test_freak_can_freak_out_if_they_have_computer_and_installed_pentacle_chip
    skip
    freak = Freakazoid.new("Dexter Douglas", "IBM 286")

    freak.upgrade_to_pentacle_chip

    assert_equal "Awwwwwwwww..... FREAK OUT! *** ZAAAP *** ", freak.freak_out
    assert_equal "Freakazoid", freak.name
  end
end
