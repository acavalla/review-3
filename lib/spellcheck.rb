class Spellcheck
  def check(sentence, dict)
    dictionary_verify(sentence, dict)
    join_new_string(sentence, new_sentence)
  end

  private
  attr_reader :new_sentence

  def dictionary_verify(sentence, dict)
    @new_sentence = []
    sentence.split(" ").each do |substring|
      word_verify(substring, dict)
    end
  end

  def word_verify(substring, dict)
    if dict.include?(substring.downcase)
      new_sentence << substring
    else
      new_sentence << "~" + substring + "~"
    end
  end

  def join_new_string(sentence, new_sentence)
    if sentence.split("")[sentence.split(" ")[0].length+1] == " "
      new_sentence.join("  ")
    else
      new_sentence.join(" ")
    end
  end
end
