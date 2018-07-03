class Binary
  def self.to_decimal(string)
    raise ArgumentError unless string.match(/^(0|1)+$/)

    string.chars.reduce(0) do |sum, digit|
      digit.to_i + sum * 2
    end
  end
end

class BookKeeping
  VERSION = 3
end
