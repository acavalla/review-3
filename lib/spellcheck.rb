class Spellcheck
  attr_reader :new_string
  def check(string, array)
    dictionary_verify(string, array).join(" ")
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
    array.include?(substring) ? new_string << substring : new_string << "~" + substring + "~"
  end
end
