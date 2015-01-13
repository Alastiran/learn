require_relative 'water'

class TonicWater < Water
    def initialize(volume = 1, carbonation = 100)
        super(volume)
        @carbonation = carbonation
    end

    def refill
        super
        @carbonation = 100
    end

end

