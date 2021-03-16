class Spellcheck
  attr_reader :new_string
  def check(string, array)
    if string.split("")[string.split(" ")[0].length+1] == " "
      dictionary_verify(string, array).join("  ")
    else
      dictionary_verify(string, array).join(" ")
    end
  end

  private

  def dictionary_verify(string, array)
    @new_string = []
    string.split(" ").each do |substring|
      word_verify(substring, array)
    end
    new_string
  end

  def word_verify(substring, array)
    if array.include?(substring.downcase)
      new_string << substring
    else
      new_string << "~" + substring + "~"
    end
  end
end
