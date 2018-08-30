class Card 
  
  attr_reader :suit, :value
  
  def initialize(value, suit)
    @value = value
    @suit = suit 
  end
  
  def to_s
    "#{@value}#{@suit}"
  end
  
  def ==(other_card)
    self.value == other_card.value && self.suit == other_card.suit
  end
  
end