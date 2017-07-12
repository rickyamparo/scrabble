gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 2, Scrabble.new.score("aa")
    assert_equal 8, Scrabble.new.score("ff")
  end

  def test_it_can_score_three_letters
    assert_equal 3, Scrabble.new.score("aaa")
    assert_equal 12, Scrabble.new.score("fff")
  end

  def test_it_can_score_different_letters
    assert_equal 7, Scrabble.new.score("abc")
    assert_equal 22, Scrabble.new.score("xyz")
  end

  def test_it_can_score_zero_letters
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_can_score_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_score_with_multipliers
    assert_equal 9, Scrabble.new.score_with_multipliers("hello", [1,2,1,1,1])
  end

end
