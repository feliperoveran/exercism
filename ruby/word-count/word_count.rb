class Phrase
  def initialize(phrase)
    @phrase = phrase.scan(/(\w+\'?\w+|\d)/i).flatten
    @counts = Hash.new(0)
  end

  def word_count
    @phrase.each do |word|
      @counts[word.downcase] += 1
    end

    @counts
  end
end

class BookKeeping
  VERSION = 1
end
