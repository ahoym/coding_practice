require_relative '../caesar_cipher'

describe "#caesar_cipher" do
  it "should return a capitalized encoded message, given a string and character shift" do
    expect(caesar_cipherIII('abc', 2)).to eq('CDE')
    expect(caesar_cipherIII('abcdefg', 1)).to eq('BCDEFGH')
  end
  
  it "should be able to encode multiple words" do
    expect(caesar_cipherIII('abc def', 3)).to eq('DEF GHI')
    expect(caesar_cipherIII('hello world', 1)).to eq('IFMMP XPSME')
  end
  
  it "should work even if there's (common) punctuation" do
    expect(caesar_cipherIII('abc,def', 4)).to eq('EFG,HIJ')
    expect(caesar_cipherIII('abc.def', 4)).to eq('EFG.HIJ')
    expect(caesar_cipherIII('abc!def', 4)).to eq('EFG!HIJ')
    expect(caesar_cipherIII('abc?def', 4)).to eq('EFG?HIJ')
    expect(caesar_cipherIII('abc"def', 4)).to eq('EFG"HIJ')
    expect(caesar_cipherIII('abc\'def', 4)).to eq('EFG\'HIJ')
    expect(caesar_cipherIII('abc-def', 4)).to eq('EFG-HIJ')
  end
  
  it "should return an empty string when given one" do
    expect(caesar_cipherIII('', 3)).to eq('')
  end
  
  it "should default to 0 if no n is given" do
    expect(caesar_cipherIII('abc')).to eq('ABC')
  end
  
  it "should even handle negative shifts" do
    expect(caesar_cipherIII('abc', -1)).to eq('ZAB')
    expect(caesar_cipherIII('abc', -2)).to eq('YZA')
    expect(caesar_cipherIII('abc', -3)).to eq('XYZ')
  end
end