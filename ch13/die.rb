class Die
    def initialize
        roll
    end
    def roll
        @number_showing = 1 + rand(6)
    end
    def showing
        return @number_showing
    end
    def set num
        @number_showing = num
    end
end

puts Die.new.set gets.chomp