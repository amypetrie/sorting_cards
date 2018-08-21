require 'pry'
class Round

attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(hash)
    card = deck.cards[@guesses.length]
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
    percent.to_i
  end
end
