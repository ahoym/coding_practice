require_relative '../combine_arrays'

describe "#combine_arrays" do
  it "should combine two given arrays. The combined array should be sorted" do
    expect(combine_arrays([1, 2], [3, 4])).to eq([1, 2, 3, 4])
    expect(combine_arrays([1, 2], [1, 2])).to eq([1, 1, 2, 2])
  end
  
  it "should handle cases where one of the arrays is empty" do
    expect(combine_arrays([1, 2, 3, 4], [])).to eq([1, 2, 3, 4])
    expect(combine_arrays([], [1, 2, 3, 4])).to eq([1, 2, 3, 4])
  end
  
  it "should even handle negatives" do
    expect(combine_arrays([-4, -3, -2], [1, 2])).to eq([-4, -3, -2, 1, 2])
    expect(combine_arrays([-4, -3, -2], [-1])).to eq([-4, -3, -2, -1])    
  end
  
  it "should raise an error if only 1 or no arrays are passed in" do
    expect{combine_arrays([1])}.to raise_error
    expect{combine_arrays()}.to raise_error
  end
end