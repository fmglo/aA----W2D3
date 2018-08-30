require 'hand.rb'
require 'rspec'

RSpec.describe Hand do 
  subject(:hand) { Hand.new }
  describe "#initialize" do
    it 'hand should start off as an empty array' do
      expect(hand).to eq([])
    end
  end
  