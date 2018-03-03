class Year
  def self.leap? year
    if !(year % 4).zero?
      return false
    elsif !(year % 100).zero?
      return true
    elsif !(year % 400).zero?
      return false
    else
      return true
    end
  end
end

module BookKeeping
  VERSION = 3
end