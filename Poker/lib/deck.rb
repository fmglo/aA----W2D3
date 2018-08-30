class Deck 
  
  attr_reader :cards
   
  CARDS_VALUES = [:ace,2,3,4,5,6,7,8,9,10,:jack,:queen,:king]
  CARDS_SUITS = %w(♠️ ♥️ ♦️ ♣️)
  
  def initialize(cards = [])
    @cards = cards
  end
  
  def self.standard_deck
    cards = []
    CARDS_VALUES.each do |value|
      CARDS_SUITS.each do |suit|
        cards << Card.new(value, suit)
      end
    end
    Deck.new(cards)
  end
  
  def shuffle!
    @cards.shuffle!
  end 
    
end