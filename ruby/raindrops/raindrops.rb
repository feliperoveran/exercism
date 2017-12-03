class Raindrops
    FACTORS = {
      'Pling' => 3,
      'Plang' => 5,
      'Plong' => 7
    }.freeze

  def self.convert(number)
    result = FACTORS.select do |sound, factor|
      number % factor == 0
    end.map(&:first).join

    if result.empty?
      result = number.to_s
    end

    result
  end
end

class BookKeeping
  VERSION = 3
end
