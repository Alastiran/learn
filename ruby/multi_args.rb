require 'pry'

def max(*rest)

  max = rest[0]
  binding.pry
  rest.each { |x| max = x if x > max }
  max
end


puts max(1)
puts max(1,2,3,1)

