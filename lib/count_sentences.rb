require 'pry'

class String
  
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end

  def sentence?
    if self.end_with?(".")
  end 

  def question?
    if self.end_with?("?")
    end
  end 

  def exclamation?
    if self.end_with?("!")
    end
  end
  
  def count_sentences
    self.split(' ').count { |word| word.sentence? || word.question? || word.exclamation? }
  end
end