require_relative '../../app/shouty'

ARBITRARY_MESSAGE = "Hello, world"

Before do
  @shouty = Shouty.new
end
 
When('{word} shouts') do |word|
  @shouty.shout(word, ARBITRARY_MESSAGE)
end

Then('{word} should hear {word}') do |name_1, name_2|
  name_2 == 'nothing' ? size = 0 : size = 1
  expect(@shouty.shouts_heard_by(name_1).size).to eq(size)
end

Then('{word} should hear {int} shouts from {word}') do |name_1, int, name_2|
  all_shouts =@shouty.shouts_heard_by(name_1)
  expect(all_shouts[name_2].size).to eq(2)
end


Then('{word} should not hear {word}') do |name_1, name_2|
  expect(@shouty.shouts_heard_by(name_1).key?(name_2)).to eq(false)
end
