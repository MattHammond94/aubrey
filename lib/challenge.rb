class GrammarStats
  def initialize
    @total_count = 0
    @true_count = 0
  end

  def check(text)
    fail "Not a valid input" unless text.is_a?(String)
    @total_count += 1
    text.start_with?(/[A-Z]/) && text.end_with?("?", "!", ".") ? @true_count +=1 : nil
  end

  def percentage_good
    ((@true_count.to_f / @total_count) * 100).round
  end
end