require "./lexi.rb"
require "./spec_helper"

describe Lexiconomitron do 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
  	before :each do 
  		@lexi = Lexiconomitron.new
  	end

	it "returns inverted words" do
		arr = ["abc", "def"]
  		expect(@lexi.shazam(arr)).to match_array(["cba", "fed"])
  	end

  	it "returns only first and last element of the array" do
  		arr = ["lld", "dad", "daf", "da"]
  		expect(@lexi.shazam(arr)).to match_array(["dll", "ad"])
  	end

  	it "returns the string reversed" do
  		arr = ["hello", "rue"]
   		expect(@lexi.shazam(arr)).to match_array(["olleh", "eur"])
 		end
	end

	describe "#oompa_loompa" do
		it "removes words with less than 3 characters" do
		arr = ["how", "deep", "is", "my", "love"]
		expect(@lexi.oompa_loompa(arr).to match_array["deep", "love"])
		end
	end

end
