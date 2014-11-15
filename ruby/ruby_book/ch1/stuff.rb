a = [3, 2, 1]
a[3] = a[2] - 1;
a.each  { |elt|
    puts elt+1
}

h = {
    :one => 1,
    :two => 2,
}
h[:three] = 3
h.each do |key,value|
    puts "#{value}:#{key};"
end

def square(x)
    x * x
end


puts square(18);

def are_you_sure?
    while true
        puts "Are you sure? [y/n]"
        response = gets
        case response
        when /^[yY]/
            return true
        when /^[nN]/, /^$/
            return false
        end
    end
end

#
# = Sequence
# Sequence is a class I wrote based on book to learn ruby
#
# == Methods
# * each
# * length (<i>size</i>)
# 

class Sequence 
    include Enumerable

    @@count;
    
    def initialize(from, to, by)
        @from, @to, @by = from, to, by
    end

    def each
        x = @from
        $x = 'global x'
        while x <= @to
            yield x
            x += @by
        end
    end

    def length
        return 0 if @from > @to
        Integer((@to-@from)/@by) + 1
    end

    alias size length

    def[](index)
        return nil if index < 0
        v = @from + index*@by
        if v <= @to
            v
        else
            nil
        end
    end
=begin this is me testing embedded documents
    def *(factor)
        Sequence.new(@from*factor, @to*factor, @by*factor)
    end
=end 

    def +(offset)
        Sequence.new(@from+offset, @to+offset, @by)
    end
end

s = Sequence.new(1, 10, 2)
s.each { |y| print y }
print s[s.size-1]
t = (s + 1) * 2

testing = "mystring"
testing.freeze

