require_relative '../lib/trader'

describe "day_trader? method" do
  it "return an array with the day to buy and to sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    expect(day_trader([2, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([0,4])
    expect(day_trader([8, 9, 6, 9, 16, 1, 2, 3, 2])).to eq([2,4])
    expect(day_trader("lol")).to eq(nil)
  end
end