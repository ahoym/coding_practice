require_relative '../anagrams'

describe "#anagrams" do
	it "should print all anagrams in buckets" do
		expect(anagrams(['star','rats','ice','cie','arts'])).to eq([['star','rats','arts'],['ice','cie']])
	end
  
  it "should handle cases when there are no anagrams" do
    expect(anagrams(['star', 'ice', 'law'])).to eq([['star'], ['ice'], ['law']])
  end
  
  it "should handle cases when the entire array is composed of anagrams" do
    expect(anagrams(['star','rats','arts'])).to eq([['star', 'rats', 'arts']])
  end
  
  it "should return an empty array when given one" do
    expect(anagrams([])).to eq([])
  end
end