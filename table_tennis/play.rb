require_relative 'table_tennis'

def reset_game(game)
    game = TableTennis.new()     
    return game
end

my_game = TableTennis.new()

player_1 = my_game.players[0]
player_2 = my_game.players[1]

while true
    puts my_game.current_score()
    user_input = gets.chomp()
    case user_input
        when "1"
            my_game.add_point(player_1)
            if my_game.has_won(player_1)
                my_game.play_victory(player_1)
                my_game = reset_game(my_game)
                player_1 = my_game.players[0]
                player_2 = my_game.players[1]
            end
        when "2"
            my_game.remove_point(player_1)
        when "3"
            my_game.add_point(player_2)
            if my_game.has_won(player_2)
                my_game.play_victory(player_2)
                 my_game = reset_game(my_game)
                player_1 = my_game.players[0]
                player_2 = my_game.players[1]
            end
        when "4"
            my_game.remove_point(player_2)
        else
            puts "Please try a number between 1 and 4."
     end
     
end