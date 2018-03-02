class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0

    primes_left = n
    i = 1
    while true do
      primes_left -= 1 if self.is_prime?(i)
      if primes_left.zero?
        return i
      end
      i += 1
    end
  end

  def self.is_prime?(number)
    return false if number == 1
    return true if number == 2
    return false if number.even?

    (3..Math.sqrt(number)).step(2) do |x|
      return false if (number % x).zero?
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end
