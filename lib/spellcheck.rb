class Spellcheck
  def check(string, array)
    dictionary_verify(string, array)
    join_new_string(string, new_string)
  end

  private
  attr_reader :new_string

  def dictionary_verify(string, array)
    @new_string = []
    string.split(" ").each do |substring|
      word_verify(substring, array)
    end
  end

  def word_verify(substring, array)
    if array.include?(substring.downcase)
      new_string << substring
    else
      new_string << "~" + substring + "~"
    end
  end

  def join_new_string(string, new_string)
    if string.split("")[string.split(" ")[0].length+1] == " "
      new_string.join("  ")
    else
      new_string.join(" ")
    end
  end
end
