require_relative '../common_substrings'

describe "#common_substrings" do
  it "should find the largest common substring between two given strings" do
    expect(common_substringsII("zooglensuck", "lenscrafter")).to eq("lens")
    expect(common_substringsII("lalalanla", "alalanl")).to eq("alalanl")
    expect(common_substringsII("abcabc", "dabcabcf")).to eq("abcabc")    
  end
  
  it "should return an empty string if there is no common substring" do
    expect(common_substringsII('abc', 'def')).to eq('')
    expect(common_substringsII('trollolololol', 'hahahahaha')).to eq('')
  end
  
  it "should raise an error if str1 and/or str2 are not passed in" do
    expect{common_substringsII('test')}.to raise_error(ArgumentError)
    expect{common_substringsII()}.to raise_error(ArgumentError)
  end
end