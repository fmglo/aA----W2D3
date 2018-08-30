require 'deck.rb'
require 'rspec'

RSpec.describe Deck do 
  let(:card) {double ("card")}
  subject(:deck) { Deck.new([card]) }
  let(:standard_deck) { Deck.standard_deck }
  
  describe '#initialize' do   
    it 'it should receive a card passed to the deck' do 
      expect(deck.cards).to include (card)
    end 
  end 
  
  describe '::self.standard_deck' do
    it 'should make a deck with an array of 52 unique cards' do 
      expect(standard_deck.cards.uniq.length).to be(52)
      # allow(card).to receive(:)
    end 
  end 
  
  describe '#shuffle!' do 
    it 'should return a shuffled deck' do 
      expect(standard_deck).not_to eq(standard_deck.shuffle!)
      # expect(standard_deck.cards.sort).to eq(Deck.standard_deck.cards)
    end 
  end 
end 
    