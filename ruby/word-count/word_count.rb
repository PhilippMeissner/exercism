class Phrase
  def initialize(phrase)
    # Also remove apostrophes that do NOT surround words
    # eg "can't" should remain "can't" but "'large'" should become "large"
    @phrase = phrase.downcase.gsub(/[^a-zA-Z' ]/i, ' ')

  end

  def word_count
    word_counts = Hash.new 0

    @phrase.split.each do |word|
      word_counts[word] += 1
    end
    word_counts
  end
end

module BookKeeping
  VERSION = 1
end
