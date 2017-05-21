require 'minitest/autorun'
require_relative 'table_tennis'
# require_relative 'player'

class Table_Tennis < Minitest::Test

    def setup
        @my_game = TableTennis.new()
    end

    def test_initialize()
        assert_instance_of(TableTennis, @my_game)
        assert_equal(2, @my_game.players.count())
        assert_equal(0, @my_game.players[0].score)
        assert_equal(0, @my_game.players[1].score)
    end
    
    def test_add_point_p1()
        @my_game.add_point(@my_game.players[0])
        assert_equal(1, @my_game.players[0].score)
    end
    
    def test_add_point_p2()
        @my_game.add_point(@my_game.players[1])
        assert_equal(1, @my_game.players[1].score)
    end
    
    def test_remove_point_p1()
        @my_game.remove_point(@my_game.players[0])
        assert_equal(0, @my_game.players[0].score)
    end
    
    def test_remove_point_p2()
        @my_game.remove_point(@my_game.players[0])
        assert_equal(0, @my_game.players[1].score)
    end
    
    # def test_reset_game()
        # reset_game()
    # end
    
end