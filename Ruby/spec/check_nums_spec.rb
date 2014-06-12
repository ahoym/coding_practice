require_relative '../check_nums'

describe "#check_nums" do
  it "should determine whether num2 is greater than num1" do
    expect(check_nums(2, 1)).to eq(false)
    expect(check_nums(3, 6)).to eq(true)
  end
  
  it "should return -1 if the two numbers are equal" do
    expect(check_nums(7, 7)).to eq(-1)
  end
  
  it "should raise an error if num1, num2, or neither numbers are given" do
    expect{check_nums(1)}.to raise_error
    expect{check_nums()}.to raise_error
  end
end