class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def self.anagram?(word_1, word_2)
    word_1.split('').sort == word_2.split('').sort
  end

  def match(words)
    words.select{|w| Anagram.anagram?(w, word)}
  end
end
