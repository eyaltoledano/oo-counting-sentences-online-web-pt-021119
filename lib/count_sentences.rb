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
    sentences = []
    binding.pry
    split = self.split
    split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        sentences << word
      end
    end

  end
end
