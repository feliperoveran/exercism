require 'byebug'
class RunLengthEncoding
  class << self
    def encode(input)
      input = input.dup

      _encode(input, '')
    end

    def decode(input)
      scan(/(\d+)?(\w|\s)/).inject("") do |decoded_string, (count, char)|
        count = count ? count.to_i : 1
        decoded_string << char * count
      end
    end

    private

      def _encode(str, result)
        return result if str.empty?

        str[/#{str[0]}+/]

        # $& is the match and $` is the string after the match (remainder)
        result << $&.size.to_s if $&.size > 1
        result << $&[0]

        _encode $', result
      end
  end
end

class BookKeeping
  VERSION = 3
end
