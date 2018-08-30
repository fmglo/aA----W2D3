require 'card.rb'
require 'rspec'

RSpec.describe Card do
  subject(:card) {Card.new(10, '♠️')}
  describe '#initialize' do
    it 'takes a value and suit and sets the card to equal the value and suit' do
      expect(card.value).to eq(10)
      expect(card.suit).to eq('♠️')
    end 
  end
end