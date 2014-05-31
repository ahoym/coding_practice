require_relative '../altered_prime_numbers'

describe '#alt_prime_num' do
  it "returns all pairs of unique prime numbers (p, q) such that p * q <= n, where n is a given integer" do
    expect(alt_prime_num(5)).to eq([[1, 2], [1, 3], [1, 5]])
    expect(alt_prime_num(10)).to eq([[1, 2], [1, 3], [1, 5], [1, 7], [2, 3], [2, 5]])
  end
  
  it "should return an empty array if n is 1 or less than 1" do
    expect(alt_prime_num(1)).to eq([])
  end
end