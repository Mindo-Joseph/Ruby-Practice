class Board
    attr_accessor :field
    #Initialize the board
    def initialize
        @field = [
            1, 2, 3,
            4, 5, 6,
            7, 8, 9
        ]
    end
    # Display the board
    def show
        puts "#{@field[0]} | #{@field[1]} | #{@field[2]}"
        puts "---+---+---"
        puts "#{@field[3]} | #{@field[4]} | #{@field[5]}"
        puts "---+---+---"
        puts "#{@field[6]} | #{@field[7]} | #{@field[8]}"
        puts "---+---+---"
        puts "\n"
    end

    #Check if board is full
    def full?
        @field.all? { |cell| cell == "X" || cell == "O"}
    end
    
    #Function to check the winner

    def winner
        winning_condition = [
            [0,1,2], [3,4,5], [6,7,8],
            [0,3,6], [1,4,7], [2,5,8],
            [2,4,6], [0,4,8]
        ]
        winning_condition.each do |condition| 
            return "X" if condition.all? { |cell| @field[cell] == "X"}
            return "O" if condition.all? { |cell| @field[cell] == "O"}
        end
        false
    end

end