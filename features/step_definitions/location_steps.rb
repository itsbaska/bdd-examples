require_relative '../../app/shouty'

Given('{word} is at {int}, {int}') do |word, x, y|
  @shouty.set_location(word, Coordinate.new(x, y))
end

Given('{word} has an account') do |word|
  @shouty.set_location(word, Coordinate.new(0, 0))
end

Given('people are located at') do | table |
  table.hashes.each do |row|
    @shouty.set_location(row["name"], Coordinate.new(row["x"].to_i, row["y"].to_i))  
  end
end
