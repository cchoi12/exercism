require 'pry'

module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(string_a, string_b)
    return 0 if string_a.empty? || string_b.empty?

    raise ArgumentError if string_a.length != string_b.length

    string_a.chars.zip(string_b.chars).count do |a, b|
      a != b
    end
  end
end
