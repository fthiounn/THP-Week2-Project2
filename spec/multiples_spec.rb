require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(3)).to eq(true)
    expect(is_multiple_of_3_or_5(5)).to eq(true)
    expect(is_multiple_of_3_or_5(51)).to eq(true)
    expect(is_multiple_of_3_or_5(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(4)).to eq(false)
    expect(is_multiple_of_3_or_5(11)).to eq(false)
    expect(is_multiple_of_3_or_5(52)).to eq(false)
    expect(is_multiple_of_3_or_5(46)).to eq(false)
  end
end

describe "the sum_of_3_and_5_multiples? method" do
  it "should return the sum" do
    expect(sum_of_3_and_5_multiples(10)).to eq(23)
    expect(sum_of_3_and_5_multiples(11)).to eq(33)
    expect(sum_of_3_and_5_multiples(1000)).to eq(233168)
    expect(sum_of_3_and_5_multiples(-1)).to eq(nil)
    expect(sum_of_3_and_5_multiples("chiffre")).to eq(nil)
  end
end