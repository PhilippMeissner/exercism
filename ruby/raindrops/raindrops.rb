class Raindrops
  RAINDROP_MAPPER = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert number
    raindrops = RAINDROP_MAPPER.map{ |factor, raindrop| raindrop if number % factor == 0 }
    raindrops.any? ? raindrops.join : number.to_s
  end
end

class BookKeeping
  VERSION = 3
end