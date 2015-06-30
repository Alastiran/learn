class JTest
  def initialize
    @greet = 'hello'
    @departure = 'goodbye'
  end

  def speak(words = @greet)
    puts words
  end
end

yo = JTest.new
yo.speak
