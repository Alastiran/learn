
hashy = { pen: "black" , erasers: ["white", "rubber"], the_nils: nil }

puts "next is existent key"
puts hashy[:pen]

puts "next is nonexistent key"
puts hashy[:starbucks]


puts "iterate on existent key"
hashy[:erasers].each {|e| puts e }

puts "iterate on key = nil"
hashy[:the_nils].each {|e| puts e }

puts "iterate on nonexistent key"
hashy[:partiers].each {|p| puts p }
