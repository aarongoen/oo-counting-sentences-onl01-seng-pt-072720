require 'pry'

class String
  
  attr_accessor :string, :count_sentences
  
  def initialize(string, count_sentences)
    @string = string
    @count_sentences = count_sentences
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

  # def count_sentences
  #   self.split(/\./).count #Has to begin with capital letter, not include ",", can include multiple punctuation at end. 
    #   self.count
    
  # def count_sentences
  # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  # end
  
  def count_sentences
    self.split(' ').count { |word| word.sentence? || word.question? || word.exclamation? }
  end
end