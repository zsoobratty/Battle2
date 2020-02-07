class Player

    attr_accessor :hit_points

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

    def receive_damage
        @hit_points -= 10
    end
    
end