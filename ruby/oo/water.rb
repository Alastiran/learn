class Water
    def initialize(volume = 1)
        @volume = volume
    end

    def is_drank?
        return (@volume > 0) ? 0 : 1
    end

    def refill
        @volume = 1
    end
end
