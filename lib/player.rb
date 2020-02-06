class Player

    def initialize(name)
        @name = name
        @hit_points = 200
    end
    
    def name
        @name
    end

    def hit_points
        @hit_points
    end

    def attack
        @hit_points -= 20
    end
    
end