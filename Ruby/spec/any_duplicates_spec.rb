require_relative '../any_duplicates'

describe "#any_duplicates?" do
  it "should return the appropriate boolean if an array contains duplicates" do
    expect(any_duplicates?([1, 2, 3, 4, 5])).to eq(false)
    expect(any_duplicates?([1, 2, 3, 4, 5, 2])).to eq(true)
  end
  
  it "should handle empty arrays" do
    expect(any_duplicates?([])).to eq(false)
  end
end

describe "#any_duplicate_nums?" do
  it "should return the appropriate boolean if an array contains duplicate nums" do
    expect(any_duplicates?([1, 2, 3, 4, 5])).to eq(false)
    expect(any_duplicates?([1, 2, 3, 4, 5, 2])).to eq(true)
  end
  
  it "should handle empty arrays" do
    expect(any_duplicates?([])).to eq(false)
  end
end