require 'pry'
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
    assert_equal "King", card_1l.value
  end

end
