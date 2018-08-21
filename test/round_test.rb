require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_1 = Deck.new([card_1, card_2, card_3])
    guess = Guess.new("queen of spades", card_1)
    round = Round.new(deck_1)
    assert_instance_of Round, round
  end

  def test_guesses
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_1 = Deck.new([card_1, card_2, card_3])
    guess = Guess.new("queen of spades", card_1)
    round = Round.new(deck_1)
    assert_equal [], round.guesses
  end

  def test_current_card
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    guess = Guess.new("queen of spades", card_1)
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_record_guess
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    guess = Guess.new("3 of Hearts", card_1)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_number_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "4", suit: "Hearts"})
    round.record_guess({value: "4", suit: "Clubs"})
    round.record_guess({value: "5", suit: "Diamonds"})
    assert_equal 2, round.number_correct
  end

  def test_percent_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "4", suit: "Hearts"})
    round.record_guess({value: "4", suit: "Clubs"})
    round.record_guess({value: "5", suit: "Diamonds"})
    assert_equal 66, round.percent_correct
  end
end
