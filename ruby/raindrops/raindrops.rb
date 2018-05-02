class Raindrops
  def self.convert number
    return_value = ''
    return_value << 'Pling' if (number % 3 == 0)
    return_value << 'Plang' if (number % 5 == 0)
    return_value << 'Plong' if (number % 7 == 0)

    if return_value.empty?
      number.to_s
    else
      return_value
    end
  end
end

module BookKeeping
  VERSION = 3
end
