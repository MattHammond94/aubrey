require 'challenge'

describe GrammarStats do
  context "multiple checks run" do
    it "returns the total ammount of values in the array after multiple checks" do
      gram = GrammarStats.new
      gram.check("False")
      gram.check("false.")
      gram.check("True!")
      gram.check("True?")
      expect(gram.percentage_good).to eq 4
    end
  end

  context 'Fails for check' do
    it 'Should return an error message for any checks on non string values' do
      gram = GrammarStats.new
      expect { gram.check(nil) }.to raise_error "Not a valid input"
      expect { gram.check(:symbol) }.to raise_error "Not a valid input"
      expect { gram.check([]) }.to raise_error "Not a valid input"
      expect { gram.check(12) }.to raise_error "Not a valid input"
    end
  end
      
  context 'percentage ran after multiple failed checks' do
    it 'Should return 0 when checks failed' do
      gram = GrammarStats.new 
      gram.check(nil)
      gram.check("True")
      expect(gram.percentage_good).to eq 1
    end
  end
end