require 'pry'

class String

  attr_writer :string

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
    sentence = 0
    index = 0
    array = [self]

    while array[0].length > index
      if (array[0][index] == "." && array[0][index -1 ] != ".")
        sentence += 1
      elsif (array[0][index] == "?" && array[0][index -1] != "?")
        sentence += 1
      elsif (array[0][index] == "!" && array[0][index -1] != "!")
        sentence += 1
      end
      index += 1
    end
    sentence
  end
end