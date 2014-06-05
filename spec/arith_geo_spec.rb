require_relative '../arith_geo'

describe "#arith_geo" do
  it "should determine whether a sequence of integers(array) is arithmetic" do
    expect(arith_geo([1, 2, 3, 4, 5])).to eq("Arithmetic")
    expect(arith_geo([2, 4, 6, 8, 10])).to eq("Arithmetic")
    expect(arith_geo([3, 6, 9, 12, 15])).to eq("Arithmetic")
  end
  
  it "should determine whether a sequence of integers(array) is geometric" do
    expect(arith_geo([2, 4, 8, 16, 32])).to eq("Geometric")
    expect(arith_geo([3, 9, 27, 81, 243])).to eq("Geometric")
  end
  
  it "should return -1 if the sequence is neither" do
    expect(arith_geo([1, 6, 2, 9, 43])).to eq(-1)
    expect(arith_geo([9, 7, 3, 2, 1, -1])).to eq(-1)
  end
  
  it "should handle negative sequences" do
    expect(arith_geo([-100, -99, -98, -97])).to eq("Arithmetic")
    expect(arith_geo([-10000, 1000, -100, 10, -1])).to eq("Geometric")
  end
  
  it "should correctly handle a repeated number sequence (Geometric)" do
    expect(arith_geo([1, 1, 1, 1, 1])).to eq("Geometric")
    expect(arith_geo([27, 27, 27, 27, 27])).to eq("Geometric")
  end
  
  it "should handle disrupting numbers in the middle of the sequence" do
    expect(arith_geo([1, 2, 3, 5, 6])).to eq(-1)
    expect(arith_geo([2, 4, 5, 8, 16])).to eq(-1)
  end
  
  it "should handle cases where there aren't enough arguments" do
    expect(arith_geo([1])).to eq(-1)
    expect(arith_geo([])).to eq(-1)
  end
end