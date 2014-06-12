require_relative '../AB_check'

describe "#AB_check" do
  it "returns true if the letters 'a' and 'b' are separated by exactly 3 character spaces." do
    expect(ab_check('a   b')).to eq(true)
  end
  
  it "returns false if they aren't separated by 3 characters" do
    expect(ab_check('a  b')).to eq(false)
  end
  
  it "works even when 'a' and 'b' are within a string" do
    expect(ab_check('a123b')).to eq(true)
    expect(ab_check('123a123b123')).to eq(true)
    expect(ab_check('8909898123a123b123123123')).to eq(true)
  end
  
  it "works even when 'b' comes first" do
    expect(ab_check('b123a')).to eq(true)
    expect(ab_check('123b123a123')).to eq(true)
    expect(ab_check('8909898123b123a123123123')).to eq(true)    
  end
  
  it "returns false if 'a' and 'b' can't possibly be 3 character spaces apart" do
    expect(ab_check'a b').to eq(false)
  end
end