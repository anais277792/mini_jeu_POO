require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points >= 0 || player2.life_points >= 0
    puts player1.show_states
    puts player2.show_states
    puts " Les joueurs sont prêts : vous pouvez attaquer ! "
    player2.attacks(player1)
    if player1.life_points >=0 
        player1.attacks(player2)
    end
end

    

binding.pry