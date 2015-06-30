require 'benchmark'

array = []
10000000.times do |i|
    array << {
        coffee: lambda { rand > 0.5 ? 'black' : 'latte' }.call,
        index: i
    }
end

Benchmark.bmbm do |x|
    x.report("for") { for o in array; o.has_key?(:coffee); end }
    x.report("each") { array.each {|o| o.has_key?(:coffee)} }
end

