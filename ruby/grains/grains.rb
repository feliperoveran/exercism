class Grains
  MAX_SQUARES = 64

  def self.square(square)
    raise ArgumentError if square <= 0 || square > MAX_SQUARES

    2**(square - 1)
  end

  def self.total
    1.upto(MAX_SQUARES).inject { |acc, n| acc += square(n) }
  end
end

module BookKeeping
  VERSION = 1
end
