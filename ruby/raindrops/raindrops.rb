class Raindrops
    FACTORS = {
      'Pling' => 3,
      'Plang' => 5,
      'Plong' => 7
    }.freeze

  def self.convert(number)
    result = FACTORS.select do |sound, factor|
      (number % factor).zero?
    end.keys

    if result.empty?
      number.to_s
    else
      result.join
    end
  end
end

class BookKeeping
  VERSION = 3
end
