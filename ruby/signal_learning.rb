puts "start program"

#Signal.trap("SIGINT", "IGNORE")
#  puts "ignore interrupt signal"
#end
f = File.open("test_file.pid", "w")
f.sync = true
f.puts $$

Signal.trap "SIGTERM" do
  puts "ignore term signal"
end

Signal.trap "EXIT" do
  puts "handling EXIT signal"
  File.unlink(f)
end



while (1) do
  puts "sleeping"
  sleep(2)
  puts "found the file" if File.exist?("test_file.pid")
end

