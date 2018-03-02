class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [@limit] if @limit == 2

    range = [*2..@limit]

    range.each do |n|
      range.reject! { |val| (val % n).zero? && val != n }
    end
  end

end

class BookKeeping
  VERSION = 1
end