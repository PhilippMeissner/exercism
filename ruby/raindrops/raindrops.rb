class Raindrops
  def self.convert number
    matches = []
    matches << 'Pling' if number % 3 == 0
    matches << 'Plang' if number % 5 == 0
    matches << 'Plong' if number % 7 == 0
    matches.empty? ? number.to_s : matches.join
  end
end

class BookKeeping
  VERSION = 3
end