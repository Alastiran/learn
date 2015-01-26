require 'pry'

def simple
  puts 'here comes the code block'
  yield 'what', 'the', 'fuck'
  puts 'there was the code block'
end

simple do |*args|
  binding.pry
  puts 'hooray! the code block is here!'
end
simple
