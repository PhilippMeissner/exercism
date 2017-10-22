class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    [*1..@n].inject(:+) ** 2
  end

  def sum_of_squares
    [*1..@n].map{ |n| n**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 4
end