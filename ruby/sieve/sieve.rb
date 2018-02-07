class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    primes = [nil, nil, *2..@max]

    multiples = 2..Math.sqrt(@max)

    multiples.each do |i|
      range = i**2..@max

      range.step(i).each do |r|
        primes[r] = nil
      end
    end

    primes.compact
  end
end

module BookKeeping
  VERSION = 1
end
