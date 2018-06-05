class Coordinate
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_from(other)
    x = (self.x - other.x).abs 
    y = (self.y - other.y).abs
    Math.sqrt((x * x) + (y * y))
  end
end
