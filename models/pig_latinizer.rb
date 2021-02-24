class PigLatinizer

  def piglatinize(sent)
    result = sent.split(" ").map do |word|
      word = word.gsub("qu", " ") #gsub replaces all occurences with the second argument
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay') # (^)finds the start of the word (^) and grab the subgroup
      word = word.gsub(" ", "qu")
    end
    result.join(" ")
  end

  def piglatinize(sent)
  end
end

quiet
