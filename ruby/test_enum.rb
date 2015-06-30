
a = [1,2,3]
e = a.to_enum

while (e.next) do |i|
    puts i
end

puts a.inspect
