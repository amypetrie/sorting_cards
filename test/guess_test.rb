require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'


class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    assert_instance_of Guess, guess
  end

  def test_it_has_a_card_guess
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    assert_equal "queen of spades", guess.response
  end

  def test_it_has_a_card
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    assert_equal card, guess.card
  end

  def test_response
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    assert_equal "queen of spades", guess.response
  end

  def test_correct?
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    card_1 = Card.new(10, "Diamonds")
    guess_1 = Guess.new("10 of diamonds", card_1)
    assert_equal false, guess.correct?
    assert_equal true, guess_1.correct?
  end

  def test_feedback
    card = Card.new(9, "Hearts")
    guess = Guess.new("queen of spades", card)
    card_1 = Card.new(10, "Diamonds")
    guess_1 = Guess.new("10 of diamonds", card_1)
    assert_equal "Incorrect.", guess.feedback
    assert_equal "Correct!", guess_1.feedback
  end
end
