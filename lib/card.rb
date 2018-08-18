class Card

attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  # write a method to verify that the .new card is an actual deck card
  def verify
  end

end
