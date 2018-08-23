class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    counter = cards.count - 1
    loop do
      switch = false
      counter.times do |i|
        if cards[i].total_card_value > cards[i+1].total_card_value
         cards[i], cards[i + 1] = cards[i + 1], cards[i]
         switch = true
        else
        end
      end
    break if switch == false
    end
    return cards
  end

end
