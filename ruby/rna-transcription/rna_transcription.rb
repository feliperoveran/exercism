class Complement
  TRANSCRIPTIONS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  INVALID_NUCLEOTIDE_TRANSCRIPTION = ''.freeze

  def self.of_dna(nucleotides)
    nucleotides.chars.map do |nucleotide|
      TRANSCRIPTIONS.fetch(nucleotide)
    end.join

  rescue KeyError
    INVALID_NUCLEOTIDE_TRANSCRIPTION
  end
end

class BookKeeping
  VERSION = 4
end
