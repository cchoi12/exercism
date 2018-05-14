require 'pry'

class SumOfMultiples
  def initialize *multiples
    @multiples = multiples
  end

  def to number
    get_multiples(number.pred)
  end

  private

  def get_multiples limit
    (0..limit).select do |number|
      @multiples.any? do |multiple|
        number % multiple == 0
      end
    end.reduce(0, :+)
  end
end

module BookKeeping
  VERSION = 2
end
