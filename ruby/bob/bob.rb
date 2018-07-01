class Bob

  def self.is_question(remark)
    remark.end_with?('?')
  end

  def self.is_yelling(remark)
    remark.upcase == remark
  end

  def self.said_nothing(remark)
    remark.empty?
  end

  def self.hey remark
    return 'Fine. Be that way!' if self.said_nothing(remark)
    return 'Whoa, chill out!' if self.is_yelling(remark)
    return 'Sure.' if self.is_question(remark)

    'Whatever.'
  end

end

module BookKeeping
  VERSION = 1
end
