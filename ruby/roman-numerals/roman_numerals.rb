module RomanNumerals
  NUMBER_TO_ROMAN_MAPPER = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1_000 => 'M'
  }.freeze

  DIVIDERS = NUMBER_TO_ROMAN_MAPPER.keys.sort.reverse.freeze

  def to_roman
    number = self
    roman_values = []

    DIVIDERS.each do |div|
      until (number / div).zero?
        number -= div
        roman_values << NUMBER_TO_ROMAN_MAPPER[div]
      end
    end

    roman_values.join
  end
end

class Fixnum
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end