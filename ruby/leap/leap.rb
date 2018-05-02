class Year
  class << self
    def leap? year
      year_evaluate(year)
    end

    private

    def year_evaluate year
      if year % 100 == 0 && year % 400 == 0
        year
      elsif year % 100 == 0
        !year
      elsif year % 4 == 0
        year
      end
    end
  end
end

module BookKeeping
  VERSION = 3
end
