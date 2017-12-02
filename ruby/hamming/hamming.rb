class Hamming
  def self.compute(first, second)
    raise ArgumentError unless first.length == second.length

    paired_strands = first.chars.zip(second.chars)

    paired_strands.count { |a, b| a != b }
  end
end

class BookKeeping
  VERSION = 3
end
