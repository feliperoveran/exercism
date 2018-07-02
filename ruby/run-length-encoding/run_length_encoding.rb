require 'byebug'
class RunLengthEncoding
  def self.encode(input)
    input = input.dup
    encoded = ''

    while !input.empty?
      char = input[0]
      next_char = input.split(char).join[0]

      if next_char
        count = input.index(next_char)
        input = input[count..-1]
      else
        count = input.rindex(char) + 1
        input = ''
      end

      if count > 1
        encoded += count.to_s + char
      else
        encoded += char
      end
    end

    encoded
  end

  def self.decode(input)
    quantities = input.scan(/(\d+)?(\w|\s)/)

    quantities.inject("") do |decoded_string, (count, char)|
      count = count ? count.to_i : 1
      decoded_string << char * count
    end
  end
end

class BookKeeping
  VERSION = 3
end
