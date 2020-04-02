class Board
    attr_accessor :field

    def initialize
        @field = []
    end

    def show
        puts "#{@field[0]} | #{@field[1]} | #{@field[2]}"
        puts "---+---+----"
        puts "#{@field[3]} | #{@field[4]} | #{@field[5]}"
        puts "---+---+----"
        puts "#{@field[6]} | #{@field[7]} | #{@field[8]}"
        puts "---+---+----"
    end

    def full?
        @field.all? { |cell| cell=="X" || cell == "O"}
    end

    def winner
        winning_condition = [
            [0,1,2], [3,4,5], [6,7,8],
            [0,3,6], [1,4,7], [2,5,8],
            [0,4,8], [2,4,6]

        ]

        winning_condition.each do |condition| 
            return "X" if condition.all? { |cell| @field[cell] == "X"}
            
            return "O" if condition.all? { |cell| @field[cell] == "O"}
            
            false
        end
    end
end