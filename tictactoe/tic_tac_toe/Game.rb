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

    def turn(player)
        puts "#{player.name}, pick the cell you want to play"
        pick = gets.chomp
        cell = pick.to_i -1
        if @board[cell] == "X" || @board[cell] == "O" || pick.length != 1 || !pick[/[1-9]/]
            return "Invalid cell"
            self.turn(player)
        else
            @board.field[cell] == player.sign
            @board.show

        end


    end
end