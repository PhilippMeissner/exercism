class Hamming
  def self.compute(frst, scnd)
    raise ArgumentError if frst.length != scnd.length
    frst.each_char.with_index(0).select{|char, i| char != scnd[i]}.count
  end
end

class BookKeeping
  VERSION = 3
end