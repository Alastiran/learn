require 'benchmark'

def with_block
  100000.times do
    File.open("with_block", "a:utf-8") do |f|
      f.puts("testing")
    end
  end
end

def with_new_and_persistent_object
  file = File.open("with_new_pers", "a:utf-8")
  100000.times do
    file.puts("testing")
  end
end

Benchmark.bmbm do |bm|
  bm.report("using block") { with_block }
  bm.report("using pers obj") { with_new_and_persistent_object }
end

