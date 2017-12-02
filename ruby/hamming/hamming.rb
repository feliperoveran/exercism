class Hamming
  def self.compute(first, second)
    raise ArgumentError unless first.length == second.length

    paired_strands = first.chars.zip(second.chars)

    paired_strands.reduce(0) do |distance, (a, b)|
      if a != b
        distance += 1
      end

      distance
    end
  end
end

class BookKeeping
  VERSION = 3
end
