class Grains
  TOTAL_SQUARES = 64

  class << self
    def square n
      input_validation(n)
      square_grain_count(n)
    end

    def total
      total_square_grains
    end

    private

    def input_validation square
      if square <= 0 || square > TOTAL_SQUARES
        raise ArgumentError
      end
    end

    def square_grain_count square
      (1..square).reduce do |acc, _int|
        acc * 2
      end
    end

    def total_square_grains
      (1..TOTAL_SQUARES).reduce do |acc, int|
        acc + (2**int / 2)
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
