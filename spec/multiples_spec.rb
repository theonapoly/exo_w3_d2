require_relative '../lib/is_multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
      expect(is_multiple_of_3_or_5?(5)).to eq(true)
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end
  
    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(11)).to eq(false)
        expect(is_multiple_of_3_or_5?(16)).to eq(false)
        expect(is_multiple_of_3_or_5?(23)).to eq(false)
        expect(is_multiple_of_3_or_5?(49)).to eq(false)
    end
  end