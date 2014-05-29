require_relative '../alphabet_soup'

describe '#alphabet_soup' do
  it "should alphabetize a punctuation-less string" do
    expect(alphabet_soup('cba')).to eq('abc')
    expect(alphabet_soup('dca')).to eq('acd')
    expect(alphabet_soup('zyxabc')).to eq('abcxyz')
    expect(alphabet_soup('test')).to eq('estt')
    
    reverse_alph = ('a'..'z').to_a.reverse.join
    expect(alphabet_soup(reverse_alph)).to eq(('a'..'z').to_a.join)
  end
  
  it "even works with multi-word strings" do
    expect(alphabet_soup("this is a test")).to eq("aehiisssttt")
  end
  
  it "should return the string raise an error if the string contains: ','" do
    expect { alphabet_soup('troll, troll') }.to raise_error
  end
  
  it "should return the string raise an error if the string contains: '.'" do
    expect { alphabet_soup('troll.') }.to raise_error
  end
  
  it "should return the string raise an error if the string contains: '!'" do
    expect { alphabet_soup('troll!') }.to raise_error
  end
  
  it "should return the string raise an error if the string contains: '?'" do
    expect { alphabet_soup('troll?') }.to raise_error
  end
  
  it "should return the string raise an error if the string contains: '\''" do
    expect { alphabet_soup('troll\'ed') }.to raise_error
  end
end