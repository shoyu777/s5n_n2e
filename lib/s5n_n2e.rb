require "s5n_n2e/version"

module S5nN2e

  class Error < StandardError; end

  def self.shorten(word = nil)
    if word.include?(".") then
      word.gsub!(/\./, " .")
    end
    if word.include?(",") then
      word.gsub!(/\,/, " ,")
    end

    if word.include?(" ") then
      words = word.split(" ")
      result = words.collect{|w| convert(w)}.join(" ")
      if word.include?(".") then
        result.gsub!(/\s\./, ".")
      end
      if word.include?(",") then
        result.gsub!(/\s\,/, ",")
      else
        result
      end
    else
      convert(word)
    end
  end

  def self.convert(word = nil)
    if word.size > 2 then
      num = word.size - 2
      word[0] + num.to_s + word[-1]
    else
      word
    end
  end

end
