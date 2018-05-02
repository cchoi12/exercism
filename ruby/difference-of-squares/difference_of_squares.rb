module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    1.upto(@number).sum**2
  end

  def sum_of_squares
    1.upto(@number).reduce do |accumulator, integer|
      accumulator + integer**2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
