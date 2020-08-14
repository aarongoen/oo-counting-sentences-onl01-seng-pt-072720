require 'pry'

class String

  def sentence?
    if self.end_with?(".") == TRUE
      TRUE
    else 
      false 
    self.end_with?
    end
  end 

  def question?
    if self.end_with?("?") == TRUE
      TRUE
    else
      false 
    end
  end 

  def exclamation?
    if self.end_with?("!") == TRUE
      TRUE
    else
      false 
    end
  end

  # def count_sentences
  #   self.split(/\./).count #Has to begin with capital letter, not include ",", can include multiple punctuation at end. 
    #   self.count
    
  def count_sentences
   self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
# end