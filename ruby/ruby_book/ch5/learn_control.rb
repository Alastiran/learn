x = 2
if x < 10 then
    puts "rage"
elsif x<=10 then
    puts "pretty much 10"
else
    puts "big"
end

#until (x > 10) do x += 1 end
x += 1 while x < 10
    puts x

name = case 
       when x == 5 then "you suck anyway 5"
       when x == 10 ; "your round 10"
       when x == 9
           "guess it's nine"
       else 
           test_name = "execute multi lines"
           "what are you?"
       end

puts name
puts test_name

juices = { :pear => 3, :apple => 10, :orange => 5 }

for k,v in juices 
    puts "#{k} => #{v}"
end
