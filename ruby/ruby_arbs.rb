require 'getoptlong'

opts = GetoptLong.new(
    [ '--test', '-t', GetoptLong::REQUIRED_ARGUMENT ],
    [ '--wine', '-w', GetoptLong::OPTIONAL_ARGUMENT ]
)
puts "test is #{opts[:test]}"

puts "what is the wine? #{opts[:wine]}"
