class Squares
  def initialize(number)
    @numbers = 1.upto(number)
  end

  def square_of_sum
    @square_of_sum ||= @numbers.inject(&:+) ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= @numbers.inject(0) { |acc, n| acc + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
