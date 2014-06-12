require_relative '../array_addition'

describe '#array_addition' do
  it "should determine whether any combination of numbers can sum to the max number in a given array" do
    expect(array_addition([3, 5, 1, 8, 12, 24])).to eq(true)
    expect(array_addition([1, 1, 1, 1, 1, 5])).to eq(true)
    expect(array_addition([1, 1, 1, 1, -1, 5])).to eq(false)
    expect(array_addition([2,5,8,4])).to eq(false)
  end
  
  it "should handle arrays with negative numbers as well" do
    expect(array_addition([3, 5, -1, 8, 12, 24])).to eq(true)
  end
  
  it "should handle cases when there aren't enough arguments" do
    expect(array_addition([1])).to eq(false)
    expect(array_addition([])).to eq(false)
  end
end