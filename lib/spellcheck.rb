class Spellcheck
  def check(string, array)
    new_string = []
    string.split(" ").each do |string|
      if array.include?(string)
        new_string << string
      else
        new_string << "~" + string + "~"
      end
    end
    new_string.join(" ")
  end
end
