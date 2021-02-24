class PigLatinizer

  def piglatinize(sent)
    result = sent.split(" ").map do |word|
      word = word.gsub("qu", " ")
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      word = word.gsub(" ", "qu")
    end
    result.join(" ")
  end
end
