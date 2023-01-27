require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    count=0
    split_sentence = self.split
    split_sentence.each do |letter|
      if(letter.sentence? or letter.question? or letter.exclamation? )
        count += 1
      end
    end
    return count
  end
end