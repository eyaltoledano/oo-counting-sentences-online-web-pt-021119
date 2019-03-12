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
    split = self.split
    split.each do |item|
      binding.pry
      if sentence? or question? or exclamation?
        sentences += 1
      elsif item.end_with("...")
        sentences
      end
    end
    sentences
  end
end
