require 'rspec'
require 'TDD_Practice.rb'


describe 'Array#my_uniq' do
  subject(:array) {[0, 2, -3, 4, 2, -3, 3]}
  it 'takes an array and returns the same array, without dups' do
    expect(array.my_uniq).to eq(array.uniq)
  end

  it "doesn't call built in uniq method" do 
    expect(array).not_to receive(:uniq)
  end
  
  it "does not modify original array" do
    original_array = array
    array.my_uniq
    expect(original_array).to be(array)
  end
end

describe 'Array#two_sum' do
  subject(:array) {[0, 2, -3, 4, 2, -3, 3]}
  let(:answer) { array.two_sum }
  it 'should return an array of arrays that are sorted on both levels' do 
    sorted_answer = (answer.each { |arr| arr.sort }).sort
    expect(answer).to eq(sorted_answer)
  end
  
  it "should have indices that add up to zero" do 
    zero_array = answer.map do |idx1, idx2|
      array[idx1] == -array[idx2] 
    end
    expect(zero_array).not_to include (false)
  end
  
  describe 'Array#my_transpose' do
    let(:matrix) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]}
    it "doesn't call #transpose method" do
      expect(matrix).not_to receive(:transpose)
    end
    
    it 'properly transposes matrix' do
      expect(matrix.my_transpose).to eq(matrix.transpose)
    end
  end
end
