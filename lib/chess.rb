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
        @blankrow1 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @blankrow2 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @blankrow3 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @blankrow4 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @blankrow5 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @blankrow6 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @blankrow7 = [@black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square]
        @blankrow8 = [@white_square, @black_square, @white_square, @black_square, @white_square, @black_square, @white_square, @black_square]
        @playerturn = 0
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

    def open_square?(coordinate)
        if coordinate_to_row(coordinate) == @black_square || coordinate_to_row(coordinate) == @white_square
            return true
        end
    end
        
    def move(start, finish)
        until valid_move?(start, finish)
            puts 'Invalid move, try again'
        end
    end

    def conquer

    end

    

    def reassignment(first_square, second_square)
        if second_square[0] == 'a'
            column = 0
        elsif second_square[0] == 'b'
            column = 1
        elsif second_square[0] == 'c'
            column = 2
        elsif second_square[0] == 'd'
            column = 3
        elsif second_square[0] == 'e'
            column = 4
        elsif second_square[0] == 'f'
            column = 5
        elsif second_square[0] == 'g'
            column = 6
        elsif second_square[0] == 'h'
            column = 7
        else
            return false
        end
        if second_square[1] == '1' 
            @row1[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '2' 
            @row2[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '3' 
            @row3[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '4' 
            @row4[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '5' 
            @row5[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '6'
            @row6[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '7'
            @row7[column] = coordinate_to_row(first_square)
        elsif second_square[1] == '8'
            @row8[column] = coordinate_to_row(first_square)
        else
            return false
        end
        if first_square[0] == 'a'
            column = 0
        elsif first_square[0] == 'b'
            column = 1
        elsif first_square[0] == 'c'
            column = 2
        elsif first_square[0] == 'd'
            column = 3
        elsif first_square[0] == 'e'
            column = 4
        elsif first_square[0] == 'f'
            column = 5
        elsif first_square[0] == 'g'
            column = 6
        elsif first_square[0] == 'h'
            column = 7
        else
            return false
        end
        if first_square[1] == '1' 
            @row1[column] = @blankrow1[column]
        elsif first_square[1] == '2' 
            @row2[column] = @blankrow2[column]
        elsif first_square[1] == '3' 
            @row3[column] = @blankrow3[column]
        elsif first_square[1] == '4' 
            @row4[column] = @blankrow4[column]
        elsif first_square[1] == '5' 
            @row5[column] = @blankrow5[column]
        elsif first_square[1] == '6'
            @row6[column] = @blankrow6[column]
        elsif first_square[1] == '7'
            @row7[column] = @blankrow7[column]
        elsif first_square[1] == '8'
            @row8[column] = @blankrow8[column]
        else
            return false
        end
    end
    
    def valid_move?(start, finish)
        if start == finish
            return false
        elsif open_square?(start)
            return false
        end
        start_letter_number = start[0].bytes
        finish_letter_number = finish[0].bytes
        if open_square?(finish)
            if coordinate_to_row(start) == @white_pawn 
                if start.include?('2') 
                    if (finish.include?("#{start[0]}4") && open_square?("#{start[0]}3")) || (finish.include?(start[0]) && finish.include?((start[1].to_i + 1).to_s))
                        return true
                    end
                elsif (finish.include?(start[0]) && finish.include?((start[1].to_i + 1).to_s))
                    return true
                end
            elsif coordinate_to_row(start) == @black_pawn
                if start.include?('7') 
                    if (finish.include?("#{start[0]}5") && open_square?("#{start[0]}6"))|| (finish.include?(start[0]) && finish.include?((start[1].to_i - 1).to_s))
                        return true
                    end
                elsif (finish.include?(start[0]) && finish.include?((start[1].to_i - 1).to_s))
                    return true
                end
            elsif coordinate_to_row(start) == @white_knight || coordinate_to_row(start) == @black_knight
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i - finish[1].to_i).abs == 2
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 2 && (start[1].to_i - finish[1].to_i).abs == 1
                    return true
                end
            elsif coordinate_to_row(start) == @white_rook || coordinate_to_row(start) == @black_rook
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    a = start[1].to_i
                    b = finish[1].to_i
                    until a == b
                        a += 1
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until start_letter_number[0] == finish_letter_number[0]
                        start_letter_number[0] += 1
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                end
            elsif coordinate_to_row(start) == @white_bishop || coordinate_to_row(start) == @black_bishop
                a = start[1].to_i
                b = finish[1].to_i
                if (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until start_letter_number[0] == finish_letter_number[0]
                    if a < b
                        a += 1
                    elsif b < a
                        a -= 1
                    end
                    if start_letter_number[0] < finish_letter_number[0]
                        start_letter_number[0] += 1
                    elsif start_letter_number[0] > finish_letter_number[0]
                        start_letter_number[0] -= 1
                    end
                    row_letter = start_letter_number[0].chr
                    new_coordinate = row_letter + a.to_s
                    unless open_square?(new_coordinate)
                        return false
                    end
                end
                return true
            elsif coordinate_to_row(start) == @white_queen || coordinate_to_row(start) == @black_queen
            elsif coordinate_to_row(start) == @white_king || coordinate_to_row(start) == @black_king
            end
        end
    end

    def check?
    end

    def check_mate?
    end

    def coordinate_to_row(coordinate)
        if coordinate[0] == 'a'
            column = 0
        elsif coordinate[0] == 'b'
            column = 1
        elsif coordinate[0] == 'c'
            column = 2
        elsif coordinate[0] == 'd'
            column = 3
        elsif coordinate[0] == 'e'
            column = 4
        elsif coordinate[0] == 'f'
            column = 5
        elsif coordinate[0] == 'g'
            column = 6
        elsif coordinate[0] == 'h'
            column = 7
        else
            return false
        end
        if coordinate[1] == '1' 
            row = @row1
        elsif coordinate[1] == '2' 
            row = @row2
        elsif coordinate[1] == '3' 
            row = @row3
        elsif coordinate[1] == '4' 
            row = @row4
        elsif coordinate[1] == '5' 
            row = @row5
        elsif coordinate[1] == '6'
            row = @row6
        elsif coordinate[1] == '7'
            row = @row7
        elsif coordinate[1] == '8'
            row = @row8
        else
            return false
        end
        return row[column]
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

    def play_game
        print_board
        i = 0
        until i == 5
            if @playerturn % 2 == 0
                turn = 1
            else
                turn = 2
            end
            puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3), or type save to save"
            starting_move = gets.chomp
            puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
            ending_move = gets.chomp
            until valid_move?(starting_move, ending_move)
                puts "That is an invalid move, try again"
                puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3)"
                starting_move = gets.chomp
                puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                ending_move = gets.chomp
            end
            reassignment(starting_move, ending_move)
            print_board
            @playerturn += 1
            i += 1
        end
        ##until move()
        ##end
    end
end
board = Board.new
board.play_game
