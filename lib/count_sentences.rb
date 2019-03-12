require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = 0
    binding.pry
    self.split("." || "?" || "!").each do |item|
      if sentence? or question? or exclamation?
        sentences + 1
      end
    end
    
  end
end
