require 'pry'

class Phrase
  def initialize words
    @words = words
    @hash = {}
  end

  def word_count
    parse_wordcount(@words)
  end

  private

  def parse_wordcount string
    string
      .downcase
      .scan(/\w+(?:'\w+)*/) do |word|
        if @hash.has_key?(word)
          @hash[word] += 1
        else
          @hash[word] = 1
        end
      end
    @hash
  end
end

module BookKeeping
  VERSION = 1
end
