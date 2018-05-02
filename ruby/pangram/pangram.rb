class Pangram
  ALPHABET = ('a'..'z').to_a

  class << self
    def pangram? phrase
      alphabet_difference = ALPHABET - letters_in(phrase)

      alphabet_difference.empty?
    end

    private

    def letters_in phrase
      phrase
        .downcase
        .chars
    end
  end
end

module BookKeeping
  VERSION = 6
end
