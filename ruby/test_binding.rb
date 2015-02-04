class Test
  def initialize(x); @x = x; end
end

class Object
  def bindings
    binding
  end
end

t = Test.new(15)
eval("puts @x", t.bindings)
