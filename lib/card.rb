class Card

attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def return_card
    "#{value.to_s.capitalize} of #{suit.capitalize}"
  end

end
