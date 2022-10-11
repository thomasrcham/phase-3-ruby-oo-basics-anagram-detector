require "pry"

class Anagram
  def initialize(old_word)
    @old_word = old_word
  end

  def match(comp_words)
    old_word_chars = @old_word.chars
    old_sort_chars = old_word_chars.sort

    comp_array =
      comp_words.map do |word|
        c_word_chars = word.chars
        c_sort_chars = c_word_chars.sort
        old_sort_chars == c_sort_chars ? word : nil
      end
    comp_array.compact
  end
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
