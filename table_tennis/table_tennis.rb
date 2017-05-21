# A game shall be won by a player or pair first scoring 11 points 
# unless both players or pairs score 10 points, when the game shall 
# be won by the first player or pair subsequently gaining a lead of 2 points.

require_relative 'player'

class TableTennis

    attr_accessor :players
    
    def initialize()
        @players = []
        @players.push(Player.new(1))
        @players.push(Player.new(2))
    end

    def add_point(player)       
        player.score += 1
    end 

    def remove_point(player)
        if (player.score > 0)
            player.score -= 1
        end
    end
    
    def has_won(player)
        player_index = player.id - 1
        player = @players[player_index]
        opponent =  @players[player_index - 1]
        
        if ((player.score == 11) && (opponent.score < 10))
            return true
        elsif ((player.score >= 10 && opponent.score >= 10) && (player.score - opponent.score == 2))
            return true        
        end
    
        return false
    end

    def play_victory(player)
        puts "Player #{player.id} won!"
    end
    
    def current_score()
        return "Player 1 - #{@players[0].score.to_s()}  #{@players[1].score.to_s()} - Player 2"
    end
    
end