class Deck

attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.to_ary.count
  end

end
