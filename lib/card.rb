require 'pry'

class Card

attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def return_card
    "#{value.to_s.capitalize} of #{suit.capitalize}"
  end
  # write a method to verify that the .new card is an actual deck card
  def verify_card_exists
  end

end
