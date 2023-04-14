class GrammarStats
  def initialize
    @arr = []
  end

  def check(text)
    fail "Not a valid input" unless text.is_a?(String)
    text.start_with?(/[A-Z]/) && text.end_with?("?", "!", ".")
    @arr << text
  end

  def percentage_good
    @arr.count
  end
end