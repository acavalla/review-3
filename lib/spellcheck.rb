class Spellcheck
  def check(string, array)
    if array.include?(string)
      string
    else
      "~" + string + "~"
    end
  end
end
