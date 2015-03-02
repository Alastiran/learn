module Greeter
  @favorite = 'Hello World'

  def hello
    "hi"
  end
end

class SomeClass
  include Greeter
end

class AnotherClass
  extend Greeter
end

