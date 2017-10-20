class Complement
  COMPLEMENT_MAPPER = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    return '' unless is_valid?(strand)
    strand.each_char.map{ |nucleotide| COMPLEMENT_MAPPER[nucleotide] }.join('')
  end

  def self.is_valid?(strand)
    strand.chars.all? { |nucleotide| COMPLEMENT_MAPPER.keys.include?(nucleotide) }
  end
end

class BookKeeping
  VERSION = 4
end