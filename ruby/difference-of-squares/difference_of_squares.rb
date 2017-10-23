class Squares
  def initialize(n)
    @range = (1..n).to_a
  end

  def square_of_sum
    @range.inject(:+) ** 2
  end

  def sum_of_squares
    @range.map{ |n| n**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 4
end