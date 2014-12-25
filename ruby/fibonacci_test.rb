require 'benchmark'

puts 'Testing fibonacci algorithms and learning benchmarking'

def fibonacci_recursive(n)
    if (n == 0 || n == 1)
        return n
    else
        return fibonacci_recursive(n-2) + fibonacci_recursive(n-1)
    end
end

def fib_it(n)
    if (n == 0 || n == 1)
        return 0
    elsif (n == 2)
        return 1
    else
        c = 1
        b = 1
        a = 0
        3.upto(n) do |i|
            a = b
            b = c
            c = a + b
        end
        return c
    end
end

ans_rec = fibonacci_recursive(6)
puts ans_rec

and_i = fib_it(6)
puts and_i

Benchmark.bm do |x|
    x.report("iterative") { fib_it(40) }
    x.report("recursive") { fibonacci_recursive(40) }
end


