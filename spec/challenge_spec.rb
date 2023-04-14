require 'challenge'

describe GrammarStats do
  context "multiple checks run" do
    it "returns the percentage of tests checked that passed the check method" do
      gram = GrammarStats.new
      gram.check("False")
      gram.check("false.")
      gram.check("True!")
      gram.check("True?")
      expect(gram.percentage_good).to eq 50
    end
  end

  # context 'Fails for check' do
  #   it 'Should return an error message for any checks on non string values' do
  #     gram = GrammarStats.new
  #     expect { gram.check(nil) }.to raise_error "Not a valid input"
  #     expect { gram.check(:symbol) }.to raise_error "Not a valid input"
  #     expect { gram.check([]) }.to raise_error "Not a valid input"
  #     expect { gram.check(12) }.to raise_error "Not a valid input"
  #   end
  # end

  context 'percentage ran after multiple checks called with non strings as arguments' do
    it 'Should return 100 when checks failed' do
      gram = GrammarStats.new 
      gram.check(nil)
      gram.check(12)
      gram.check(:symbol)
      gram.check("True.")
      expect(gram.percentage_good).to eq 100
    end
  end

  context "Passed 3 values" do
    it "returns the correct %" do
      gram = GrammarStats.new
      gram.check("False")
      gram.check("false.")
      gram.check("True.")
      expect(gram.percentage_good).to eq 33
    end
  end

  context "Passed 6 values, 4 false and 2 true" do
    it "returns the correct %" do
      gram = GrammarStats.new
      gram.check("False")
      gram.check("Falsel")
      gram.check("True.")
      gram.check("True.")
      gram.check("True.")
      gram.check("True.")
      expect(gram.percentage_good).to eq 67
    end
  end
end