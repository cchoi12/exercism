class Sieve
  def initialize number
    @number_list = (2..number).to_a
  end

  def primes
    @number_list.each do |num|
      @number_list.delete_if do |num_two|
        num_two % num == 0 && num_two != num
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
