class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    primes = (2..@max).to_a

    multiples = (2..Math.sqrt(@max)).to_a

    multiples.each do |i|
      # index from where we will start looking for primes. so when i = 2 we
      # start looking from the next element, that is, 3
      index = primes.index(i)

      # Skip if we couln't find i. It has already been deleted on a previous
      # interaction since it is a multiple of a previous value of i
      next unless index

      start_at = index + 1

      primes[start_at..-1].each do |n|
        # delete n if it is a multiple of i
        primes.delete(n) if n % i == 0
      end
    end

    primes
  end
end

module BookKeeping
  VERSION = 1
end
