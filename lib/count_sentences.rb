require 'pry'

class String
  
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end

  def sentence?
    if self.end_with?(".") == TRUE
      TRUE
    else 
      false 
    self.end_with?
    end
  end 

  def question?
    if self.end_with?("?") == true 
      true
    else
      false 
    end
  end 

  def exclamation?
    if self.end_with?("!") == true
      true
    else
      false 
    end
  end
  
  def count_sentences
    self.split(' ').count { |word| word.sentence? || word.question? || word.exclamation? }
  end
end