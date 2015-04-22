# lifted from ruby-docs to help learn how to write queues / threading programs
# http://ruby-doc.org/stdlib-1.9.3/libdoc/thread/rdoc/Queue.html
# https://blog.engineyard.com/2014/ruby-thread-pool
require 'thread'

work_queue = Queue.new

producer = Thread.new do
  5.times do |i|
    sleep rand(i)
    work_queue.push(i)
    puts "produced #{i}"
  end
end

consumer = Thread.new do
  5.times do |i|
    work_queue.pop(true)
    sleep rand(i/2)
    puts "consummed #{i}"
  end
end

consumer.join
