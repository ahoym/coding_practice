require_relative '../best_string'

describe "#best_string" do
  it "should return the element that contains the most other element strings from an array" do
    expect(best_string(%w(test est st t))).to eq("test")
    expect(best_string(%w(lies ies flies poop oop roop op droop troop))).to eq('troop')
    expect(best_string(%w(ess s e baffle))).to eq("ess")
  end
  
  it "should return an empty string if given an empty or single element array" do
    expect(best_string([])).to eq('')
    expect(best_string(['lol'])).to eq('')
  end
  
  it "should return an empty string if the array is full of the same word" do
    expect(best_string(%w(lol lol lol lol))).to eq('')
  end
end