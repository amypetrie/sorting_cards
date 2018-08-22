class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards.to_ary
  end

  def count
    @cards.to_ary.count
  end

  def sort
    counter = cards.count - 1
    loop do 
    counter.times do
    final = []
    cards.each_index do |i|
      final = []
      if i > cards.count - 1
        break
      elsif cards[i].total_card_value > cards[i+1].total_card_value
        final << cards[i]
      else
        final << cards[i+1]
        binding.pry
      end
    end

  end

end
