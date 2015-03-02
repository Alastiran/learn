require './battler'

class Pokemon
  include Battler

  attr_accessor :str, :name

  def initialize(name, strength)
    @name = name
    @str = strength
  end

  def <=>(other)
    return self.str <=> other.str
  end

end

