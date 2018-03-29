require 'prime'

class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0

    Prime::EratosthenesSieve.instance.get_nth_prime(n-1)
  end
end

class BookKeeping
  VERSION = 1
end
