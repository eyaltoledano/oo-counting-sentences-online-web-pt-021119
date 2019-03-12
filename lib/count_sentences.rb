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
    split = self.split
    split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        sentences << word
      end
    end
    sentences.count
  end
end
