POUNDS_PER_KG = 2.2

puts ::POUNDS_PER_KG

def change_constants

#    POUNDS_PER_KG = 2.5

end

change_constants();

puts ::POUNDS_PER_KG

puts "looking for input"

input = gets 

puts 'below this will echo input'
puts "is input tainted? " + input.tainted?.to_s
puts "is input untrusted? " + input.untrusted?.to_s
puts input

message = "hello world"
STDOUT << message
