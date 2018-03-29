require 'prime'
require 'byebug'

class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0

    Prime.first(n).last
  end
end

class BookKeeping
  VERSION = 1
end
