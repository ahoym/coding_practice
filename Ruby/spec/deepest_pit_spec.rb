require_relative '../deepest_pit'

describe "#deepest_pit" do
  it "should find the deepest pit" do
    expect(solution([0, 1, 3, -2, 0, 1, 0, -3, 2, 3])).to eq(4)
    expect(solution([0, 1, 3, -2, 3, 1, 0, -3, 4, 6])).to eq(6)
  end
  
  it "should handle simple arrays" do
    expect(solution([3, 2, 1, 3])).to eq(2)
  end
  
  it "should handle non desc/asc" do
    
  end
  
end