require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("King", "Hearts")
    assert_instance_of Card, card_1
  end

  def test_it_has_a_suit
    card_1 = Card.new("King", "Hearts")
    assert_equal "Hearts", card_1.suit
  end

  def test_it_has_a_value
    card_1 = Card.new("King", "Hearts")
    assert_equal "King", card_1.value
  end

  def test_return_card
    card_10 = Card.new("3", "Diamonds")
    assert_equal "3 of Diamonds", card_10.return_card
  end

  def test_total_card_value
    card_10 = Card.new("3", "Diamonds")
    assert_equal 32, card_10.total_card_value
  end
end
