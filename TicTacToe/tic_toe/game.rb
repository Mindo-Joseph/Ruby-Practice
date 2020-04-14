class Game
    #The start of the game
    def start
        puts "Player 1 what is your name?"
        pl_1 = gets.chomp
        @player_1 = Player.new(pl_1,"X")
        puts "Player 2 what is your name?"
        pl_2 = gets.chomp
        @player_2 = Player.new(pl_2,"O")
        @board = Board.new
        @board.show

    
    end

    #Select the turn of player
    def turn(player)
        puts "#{player.name} pick a box to mark"
        pick = gets.chomp
        cell = pick.to_i-1
        #check if the cell is occupied 
        if @board.field[cell] == "X" || @board.field[cell] == "O" || pick.length != 1 || !pick[/[1-9]/]
            puts "Invalid Cell"
            self.turn(player)
        else
            @board.field[cell] = player.mark
            @board.show
        end
    end

    #Method to end game
    def finish_game
        case @board.winner
        when "X"
            puts "#{@player_1.name} wins"
        when "O"
            puts "#{@player_2.name} wins"
        else
            puts "Its a tie"
        end
        puts "Do you want to play again ? (Y or N)"
        valid_yes_answers = ["yes", "Y"]
        valid_no_answers = ["no","N"]
        answer = gets.chomp.downcase
        until valid_yes_answers.any? { |item| item == answer} || valid_no_answers.any? { |item| item == answer}
            puts "Enter either yes or no"
            answer = gets.chomp.downcase
            
        end
        Game.new.play if valid_yes_answers.any? { |item| item == answer}
        

    end

    #The method to play the game
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