require 'benchmark'

@count = 1000000

def block_call(&block)
  block.call
end

def just_yield
  yield
end

Benchmark.bmbm do |b|
  b.report("blocks calls") { @count.times { block_call { "hi" } } }
  b.report("yield calls") { @count.times { just_yield { "hi" } } }
end


