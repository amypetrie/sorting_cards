class Round

attr_reader :deck, :guesses, :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def current_card
    deck.cards[0]
    unless guesses.length > 0
    deck.cards[guesses.length]
    end
  end

  def record_guess(hash)
    card = self.current_card
    guess = "#{hash[:value]} of #{hash[:suit]}"
    new_guess = Guess.new(guess, card)
    @guesses << new_guess
    new_guess
  end

  def number_correct
    guesses.each do |guess|
      card = deck.cards[@guesses.length - 1] unless @guesses.length == 0
      if card.return_card.upcase == guess.response.upcase
        break
      else
        @number_correct += 1
      end
    end
    return @number_correct
  end

  def percent_correct
    percent = number_correct.to_f / guesses.length.to_f
    percent = percent * 100
    return percent.to_i
  end
end
