require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_1 = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck_1
  end

  def test_it_has_cards
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_1 = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck_1.cards
  end

  def test_count
    card_1 = Card.new("6", "Spades")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck_1 = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck_1.count
  end
end
