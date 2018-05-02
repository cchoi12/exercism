class Acronym
  def self.abbreviate(word)
    word.tr('-', ' ')
        .split(/\W+/)
        .reduce('') do |memo, word|
      memo << word.chr.upcase
    end
  end
end

module BookKeeping
  VERSION = 4
end
