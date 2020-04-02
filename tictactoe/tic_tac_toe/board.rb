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
end