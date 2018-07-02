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
    decoded_string = ''

    quantities.each do |quantity|
      count = quantity[0].to_i
      char = quantity[1]

      if count > 1
        decoded_string += char * count
      else
        decoded_string += char
      end
    end

    decoded_string
  end
end

class BookKeeping
  VERSION = 3
end
