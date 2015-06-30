require 'optparse'

options = {}
OptionParser.new do |opts|

    opts.on('-u', '--user_location_id ID', 'User Location ID') { |v| options[:user_location_id] = v }
    opts.on('-p', '--postal_code', 'Postal Code') { |v| options[:postal_code] = v }

end.parse!

puts options.class
puts options[:user_location_id]
puts options[:user_location_id].class
