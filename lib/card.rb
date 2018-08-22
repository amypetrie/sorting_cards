class Card

attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    @total_card_value = total_card_value
  end

  def return_card
    "#{value.to_s.capitalize} of #{suit.capitalize}"
  end

  def card_values
    card_values = {"2" => 20, "3" => 30, "4" => 40, "5" => 50,
                  "6" => 60, "7" => 70, "8" => 80, "9" => 90, "10" => 100,
                  "Jack" => 110, "Queen" => 120, "King" => 130, "Ace" => 140}
  end

  def suit_values
    suit_values = {"Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}
  end

  def total_card_value
    total = card_values["#{value}"] + suit_values["#{suit}"]
  end

end
