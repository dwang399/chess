require 'erb'
require 'yaml'
class Board

    def initialize
        black_square = "\u{25a0}"
        white_square = "\u{25a1}"
        @black_square = black_square.encode('utf-8')
        @white_square = white_square.encode('utf-8')
        @black_pawn = "♟"
        @black_queen = "♛"
        @black_knight = "♞"
        @black_rook = "♜"
        @black_bishop = "♝"
        @black_king = "♚"
        @white_pawn = "♙"
        @white_queen = "♕"
        @white_rook = "♖"
        @white_knight = "♘"
        @white_bishop = "♗"
        @white_king = "♔"
        @row1 = [@white_rook, @white_knight, @white_bishop, @white_queen, @white_king, @white_bishop, @white_knight, @white_rook]
        @row2 = [@white_pawn, @white_pawn, @white_pawn, @white_pawn, @white_pawn, @white_pawn, @white_pawn, @white_pawn]
        @row3 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @row4 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @row5 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @row6 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @row7 = [@black_pawn, @black_pawn, @black_pawn, @black_pawn, @black_pawn, @black_pawn, @black_pawn, @black_pawn]
        @row8 = [@black_rook, @black_knight, @black_bishop, @black_queen, @black_king, @black_bishop, @black_knight, @black_rook]
    end

    def print_board
        p @row8
        p @row7
        p @row6
        p @row5
        p @row4
        p @row3
        p @row2
        p @row1
    end

    def open_square?(x)
        if @row1[x] == @black_square || @row1[x] == @white_square
            return true
        else
            return false
        end
    end
        
    def move(start, finish)
        
    end

    def save
        puts "Please choose a name for your save file"
        name = gets.chomp
        file = {

        }        
        File.open(File.join(Dir.pwd, "/saved_games/#{name}.yaml"), 'w')  { |f| f.write(YAML.dump(file)) }
        puts "File Saved Successfully!"
    end

    def load
        puts "Enter the name of your save file"
        name = gets.chomp
        file = YAML.load(File.open(File.join(File.dirname(__FILE__), "/saved_games/#{name}.yaml")))
    end
end

class Wpawn
    def initialize
        @move = 0
    end

    def move
        if @move == 0

        end
    end
end

class Bpawn
    def initialize
        @move = 0
    end

    def move(start, finish)
        if @move == 0
        end
    end
end

board = Board.new
board.print_board
