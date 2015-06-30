
def risky
    i = 6
    begin
      x = factorial(-1)
    rescue => ex
      puts "#{ex.class}: #{ex.message}"
      raise Exception
    end
end

begin
    risky
rescue Exception => e
    puts "2nd level catch"
    e.message
end

puts "caught!"


