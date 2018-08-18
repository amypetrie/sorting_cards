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
    @card_guess
  end

  def correct?
    card_guess == card
  end

  def feedback
    if self.correct == true
      p "Correct!"
    else
      p "Incorrect."
    end
  end

end
