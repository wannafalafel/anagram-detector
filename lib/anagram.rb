# Your code goes here!
require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
    @anagrams = []
    list.each do |x|
      if x.split("").sort == word_sorter
        @anagrams << x
      end
    end
    @anagrams
  end

  protected
  def word_sorter
    @word.split("").sort
  end

end
