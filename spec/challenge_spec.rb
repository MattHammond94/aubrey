require 'challenge'

describe GrammarStats do
  context "multiple checks run" do
    it "returns an array of strings checked" do
      gram = GrammarStats.new
      gram.check("False")
      gram.check("false.")
      gram.check("True!")
      gram.check("True?")
      expect(gram.percentage_good).to eq 4
    end
  end
end