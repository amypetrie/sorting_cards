class Guess

attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    response.upcase == card.return_card.upcase
  end

  def feedback
    if self.correct? == true
      "Correct!"
    else
      "Incorrect."
    end
  end
  
end
