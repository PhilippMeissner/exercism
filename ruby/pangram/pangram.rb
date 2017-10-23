class Pangram
  LETTERS_IN_ALPHABET = 26

  def self.pangram?(str)
    str.downcase.delete('^a-z').chars.uniq.size == LETTERS_IN_ALPHABET
  end
end

class BookKeeping
  VERSION = 5
end