class Deck

attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.to_ary.count
  end

  def sort
    value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suit = ["Clubs", "Diamonds", "Hearts", "Spades"]
    sorted = []
    cards.each do |card|
      new_index = cards.rindex(card) + 1
      if card.value < cards[new_index].value.to_s
        sorted << card
      else
        break
      end
    end
    sorted
  end

end
