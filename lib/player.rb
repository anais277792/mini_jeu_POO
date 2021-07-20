class Player 
 attr_accessor :life_points, :name 
 

    def initialize(player_name)
        @name = player_name 
        @life_points = 10 
    end

#méthode qui affiche l'éat du joueur 
    def show_states
        puts "#{@name} à #{@life_points} points de vie"
    end
# méthode qui fait baisser le niveau de vie 
    def gets_damage (damage_received)
    @life_points = @life_points - damage_received
     if @life_points <= 0
         puts "#{@name} nous a quitté ! RIP"
     else puts show_states 
    end
    end 
#méthode qui permet à un joueur d'en attaquer un autre 
    def attacks(player)
        damage_received = compute_damage
        puts "#{@name} attaque #{player.name}."
        puts " Il lui inflige #{damage_received}"
        gets_damage(damage_received)
    end
#méthode dde randomisation des dommages
    def compute_damage 
        return rand(1...10)
    end
end
class HumanPlaye < Player
@weapon_level 
end
