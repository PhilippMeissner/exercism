class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\b[\w']+\b/)

  end

  def word_count
    word_counts = Hash.new 0

    @phrase.each do |word|
      word_counts[word] += 1
    end
    word_counts
  end
end

module BookKeeping
  VERSION = 1
end
