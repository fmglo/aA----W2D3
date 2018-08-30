require_relative 'deck.rb'
  
class Hand 
  POKER_HANDS = [ ]
  
  
  def initialize
    @hand = []
  end
  
  def deal_hand(deck)
    5.times do 
      @hand << deck.pop
    end 
  end 
  
  def discard(indices_of_unwanted_cards, deck)
    raise ArgumentError if indices_of_unwanted_cards.length > 3
    indices_of_unwanted_cards.each do |num|
      @hand.delete_at(num)
    end
    indices_of_wanted_card.times do
      @hand << deck.pop
    end
  end 

end
