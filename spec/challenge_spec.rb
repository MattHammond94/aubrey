require 'challenge'

describe GrammarStats do
  it 'Should check if the text passed begins with a capital letter' do
    gram = GrammarStats.new
    expect(gram.check("True")).to eq true
    expect(gram.check("true")).to eq false
  end
end