require 'thread'

id_queue = Queue.new

id_queue = (1..100).to_a.each {|i| id_queue.push(i) }

workers = (0...4).map do |i|
  Thread.new do
    while target_id = id_queue.pop
      sleep rand(2) # thread does work
      puts "processing id #{target_id} by #{Thread.current} \n"

    end
  end
end

workers.map(&:join)
puts "done"


