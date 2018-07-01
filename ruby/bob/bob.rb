# frozen_string_literal: true

class Bob
  def self.hey(remark)
    case remark.strip
    when /^\s*$/
      'Fine. Be that way!'
    when /\A[A-Z\s]+\?\Z/
      "Calm down, I know what I'm doing!"
    when /([A-Z\s]+\Z)|([A-Z \d]+!+\Z)/
      'Whoa, chill out!'
    when /.*\?\Z/
      'Sure.'
    else
      'Whatever.'
    end
  end
end

class BookKeeping
  VERSION = 2
end
