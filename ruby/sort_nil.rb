
names = ['tom', 'bombadil', 'rageface', 'nil', 'aragon']
obs = [
    {
        name: 'tom',
        age: 80,
    },
    {
        name: 'bombadil',
        age: nil,
    },
    {
        name: 'aragorn',
        age: 60,
    },
]

puts obs


#obs.select! {|o| !o[:age].nil?}.sort! {|a,b| a[:age] <=> b[:age] }
sorted_obs = obs.each {|o| o[:age] = 0 if o[:age].nil? }.sort {|a,b| a[:age] <=> b[:age] }
puts "SORTED"

#puts obs
puts sorted_obs

