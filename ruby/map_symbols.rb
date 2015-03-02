
array = ["96", "32", "2"]

strings = array.map(&:to_i)

strings.each {|s| puts s}
