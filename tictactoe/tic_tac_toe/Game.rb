class Game
    def start
        puts "Player 1 what is your name? "
        pl_1 = gets.chomp
        @player_1 = Player.new(pl_1,"X")

        puts "Player 2 what is your name? "
        pl_2 = gets.chomp
        @player_2 = Player.new(pl_2,"O")

        @board = Board.new
        @board.show
    end
end