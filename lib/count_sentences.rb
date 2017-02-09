require 'pry'

class String


  def sentence?
    self.punctuation_at_end?(".")
  end

  def question?
    self.punctuation_at_end?("?")
  end

  def exclamation?
    self.punctuation_at_end?("!")
  end

  def punctuation_at_end?(punctuation)
    self.end_with?(punctuation)
  end


  def count_sentences
    split_sentences = self.split(/[?.!]+/)
    count = split_sentences.count
  end
end
