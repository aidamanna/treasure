class TreasureMap
  def initialize(treasure_location)
    @treasure_location = treasure_location
  end

  def is_in(location)
    distance = location.distance(@treasure_location)
    case distance
    when 0 then 'Success'
    when 1 then 'Hot'
    when 2 then 'Warm'
    else 'Cold'
    end
  end
end

class Location
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def self.random
    Location.new(Random.rand(1..10), Random.rand(1..10))
  end

  def distance(other)
    Math.sqrt((other.x - @x) ** 2 + (other.y - @y) ** 2).floor
  end
end
