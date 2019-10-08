require_relative '../lib/caesar_cipher'

describe "caesar_cipher method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    s = "Ceci est un String de test"
    expect(caesar_cipher(s,0)).to eq(s)
    expect(caesar_cipher(s,1)).to eq("Dfdj ftu vo Tusjoh ef uftu")
    expect(caesar_cipher(s,2)).to eq("Egek guv wp Uvtkpi fg vguv")
  end
end