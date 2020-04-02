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

    def finish_game
        case @board.winner
        when "X"
            puts "#{@player_1.name} wins!"
        when "O"
            puts "#{@player_2.name} wins!"
        else
            puts "Its a tie"
        end
        puts "Want to play again?"
        answer = gets.chomp.downcase
        valid_yes = ["yes","Y"]
        valid_no = ["no","N"]
        
        until valid_yes.any? { |item| answer == item} || valid_no.any? {|item| answer == item}
            puts "Give either yes or no "
            answer = gets.chomp.downcase
        end
        Game.new.play if valid_yes.any? { |item| answer == item}

    end

    def play
        self.start
        until @board.full? || @board.winner
            self.turn(@player_1)
            break if @board.full? || @board.winner
            self.turn(@player_2)
        end
        self.finish_game
    end
end