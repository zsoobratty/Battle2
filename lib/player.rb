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

    def attack(player)
        player.receive_damage
    end

    def receive_damage
        @hit_points -= 10
    end
    
end