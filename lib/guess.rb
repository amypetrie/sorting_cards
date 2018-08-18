require 'pry'

class Guess

attr_reader :card_guess, :card

  def initialize(card_guess, card)
    @card_guess = card_guess
    @card = card
  end

#returns the actual card that corresponds to the guess
  def card
    @card
  end

#returns the guess
  def response
    card_array = card_guess.split(" ")
    value = card_array[0].capitalize
    suit = card_array[2].capitalize
    "#{value} of #{suit}"
  end

  def correct?
    self.response == card.return_card
  end

  def feedback
    if self.correct? == true
      p "Correct!"
    else
      p "Incorrect."
    end
  end

end
