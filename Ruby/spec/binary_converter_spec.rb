require_relative '../binary_converter'

describe "#binary_converter" do
  it "should convert a string of binary digits to decimal value" do
    expect(binary_converter('011')).to eq(3)
    expect(binary_converter('100101')).to eq(37)
    expect(binary_converter('11111111')).to eq(255)
  end
  
  it "should correctly handle padding with 0s" do
    expect(binary_converter('00100101')).to eq(37)
  end
  
  it "should handle an all 0 string" do
    expect(binary_converter('0000000')).to eq(0)
  end
end