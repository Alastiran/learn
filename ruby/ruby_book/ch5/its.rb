#File.open("learn_control.rb") do |f|
    #f.each_with_index do |line,number|
    #    puts "#{number}: #{line}"
    #end
#end

#squares = [1,2,3].collect { |x| x*x }
#squares.each { |x| puts x }
#
iterator = 9.downto(1)
loop do
    puts iterator.next
end
puts "...blaseoff!"
    
BEGIN {
    def party_time
        puts 'party time'
    end
}
    
