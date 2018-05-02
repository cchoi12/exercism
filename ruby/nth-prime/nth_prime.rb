require 'prime'

class Prime
  # def self.ceiling_number n
  #   n * (Math.log(n) + 2)
  # end

  def self.prime_array n
    # limit = self.ceiling_number(n)
    # array = Array(2..limit)
    array = Prime.take(n)
    array.each do |num|
      array.delete_if do |num_two|
        num_two % num == 0 && num_two != num
      end
    end
  end

  def self.nth n
    raise ArgumentError if n.zero?

    prime_array = self.prime_array(n)
    prime_array[n.pred]
  end
end

module BookKeeping
  VERSION = 1
end
