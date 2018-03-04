class Integer
  ROMANS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def to_roman
    result = ''
    integer = self

    ROMANS.each_pair do |arabic, roman|
      while integer >= arabic
        integer -= arabic
        result << roman
      end
    end

    result
  end
end

class BookKeeping
  VERSION = 2
end
