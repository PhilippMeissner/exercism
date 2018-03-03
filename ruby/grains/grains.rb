class Grains
  TOTAL_GRAINS = 18_446_744_073_709_551_615

  def self.square(n)
    raise ArgumentError if n <= 0 || n > 64
    2**(n - 1)
  end

  def self.total
    TOTAL_GRAINS
  end
end

module BookKeeping
  VERSION = 1
end
