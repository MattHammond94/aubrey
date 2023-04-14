class GrammarStats
  def initialize
    @total_count = 0
    @true_count = 0
  end

  def check(text)
    if text.is_a?(String)
      @total_count += 1
      text.start_with?(/[A-Z]/) && text.end_with?("?", "!", ".") ? @true_count += 1 : nil
    else 
      @total_count += 0 
    end
  end

  def percentage_good
    ((@true_count.to_f / @total_count) * 100).round
  end
end

# Had a conversation with Leo around error catching to avoid program ending when a non String
# Data type is passed to check. 

# Can add a further method that only checks the data type and then catches an error and 
# prompts user for another input if not a String. This method would then be called in our check method. 

# Due to wanting our program to only have 3 methods as per the challenge task
# I have added a conditional to check method arg is a String to avoid error ending program.
# These tests have also been re-added.