gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected =
      "99 bottles of milk on the wall, " +
      "99 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "98 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verse(99)
  end

  def test_another_verse
    expected =
      "3 bottles of milk on the wall, " +
      "3 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "2 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verse(3)
  end

  def test_verse_2
    expected =
      "2 bottles of milk on the wall, " +
      "2 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "1 bottle of milk on the wall.\n"
    assert_equal expected, Bottles.new.verse(2)
  end

  def test_verse_1
    expected =
      "1 bottle of milk on the wall, " +
      "1 bottle of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n"
     assert_equal expected, Bottles.new.verse(1)
  end

  def test_verse_0
    expected =
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verse(0)
  end

  def test_a_couple_verses
    expected =
      "99 bottles of milk on the wall, " +
      "99 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "98 bottles of milk on the wall.\n" +
      "\n" +
      "98 bottles of milk on the wall, " +
      "98 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "97 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verses(99, 98)
  end

  def test_a_few_verses
    expected =
      "2 bottles of milk on the wall, " +
      "2 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "1 bottle of milk on the wall.\n" +
      "\n" +
      "1 bottle of milk on the wall, " +
      "1 bottle of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n" +
      "\n" +
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verses(2, 0)
  end

  def test_the_whole_song
    bottles = Bottles.new
    assert_equal bottles.verses(99, 0), bottles.song
  end
end
