require_relative '../alternate_int'

describe "#alternate_int" do
  it "should place positive and negative integers in alternate order" do
    expect(alternate_int([1, 2, -1, -2])).to eq([1, -1, 2, -2])
    expect(alternate_int([1, 2, -1, -2, 3])).to eq([1, -1, 2, -2, 3])
  end
  
  it "should work if there are an excess of positive integers" do
    expect(alternate_int([1, 2, -1, -2, 3, 4, 5, 6])).to eq([1, -1, 2, -2, 3, 4, 5, 6])
    expect(alternate_int([1, 2, 3])).to eq([1, 2, 3])
  end
  
  it "should work if there are an excess of positive integers" do
    expect(alternate_int([1, 2, -1, -2, -3, -4, -5, -6])).to eq([1, -1, 2, -2, -3, -4, -5, -6])
    expect(alternate_int([-1, -2, -3])).to eq([-1, -2, -3])
  end

  it "should return an empty array if given one" do
    expect(alternate_int([])).to eq([])
  end
  
  it "should handle single element arrays" do
    expect(alternate_int([1])).to eq([1])
    expect(alternate_int([-1])).to eq([-1])
  end
end