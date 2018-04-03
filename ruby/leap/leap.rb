class Year
  class << self
    def leap?(year)
      divisible_by_4?(year) &&
        (!divisible_by_100?(year) || divisible_by_400?(year))
    end

    private

    def divisible_by_4?(year)
      (year % 4).zero?
    end

    def divisible_by_100?(year)
      (year % 100).zero?
    end

    def divisible_by_400?(year)
      (year % 400).zero?
    end
  end
end

class BookKeeping
  VERSION = 3
end
