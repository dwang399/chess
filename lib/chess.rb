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
        @copyrow1 = @row1
        @copyrow2 = @row2
        @copyrow3 = @row3
        @copyrow4 = @row4
        @copyrow5 = @row5
        @copyrow6 = @row6
        @copyrow7 = @row7
        @copyrow8 = @row8
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

    def opposite_side?(start, finish)
        if coordinate_to_row(start) == "♙" 
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♕"
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♖"
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♘"
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♗"
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♔"
            if coordinate_to_row(finish) == "♚"
                return true
            elsif coordinate_to_row(finish) == "♝"
                return true
            elsif coordinate_to_row(finish) == "♜"
                return true
            elsif coordinate_to_row(finish) == "♞"
                return true
            elsif coordinate_to_row(finish) == "♛"
                return true
            elsif coordinate_to_row(finish) == "♟"
                return true
            end
        elsif coordinate_to_row(start) == "♚"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        elsif coordinate_to_row(start) == "♝"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        elsif coordinate_to_row(start) == "♜"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        elsif coordinate_to_row(start) == "♞"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        elsif coordinate_to_row(start) == "♛"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        elsif coordinate_to_row(start) == "♟"
            if coordinate_to_row(finish) == "♙"
                return true
            elsif coordinate_to_row(finish) == "♕"
                return true
            elsif coordinate_to_row(finish) == "♖"
                return true
            elsif coordinate_to_row(finish) == "♘"
                return true
            elsif coordinate_to_row(finish) == "♗"
                return true
            elsif coordinate_to_row(finish) == "♔"
                return true
            end
        end
        return false
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
        if open_square?(finish) || opposite_side?(start, finish)
            if coordinate_to_row(start) == @white_pawn && (@playerturn % 2 == 0)
                if start.include?('2') 
                    if ((finish.include?("#{start[0]}4") && open_square?("#{start[0]}3")) || (finish.include?(start[0]) && finish.include?((start[1].to_i + 1).to_s))) && open_square?(finish)
                        return true
                    end
                elsif finish.include?(start[0]) && finish.include?((start[1].to_i + 1).to_s) && open_square?(finish)
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i + 1 == finish[1].to_i) 
                    return true
                end
            elsif coordinate_to_row(start) == @black_pawn && (@playerturn % 2 == 1)
                if start.include?('7') 
                    if ((finish.include?("#{start[0]}5") && open_square?("#{start[0]}6")) || (finish.include?(start[0]) && finish.include?((start[1].to_i - 1).to_s))) && open_square?(finish)
                        return true
                    end
                elsif finish.include?(start[0]) && finish.include?((start[1].to_i - 1).to_s) && open_square?(finish)
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i + 1 == finish[1].to_i) 
                    return true
                end
            elsif (coordinate_to_row(start) == @white_knight && (@playerturn % 2 == 0)) || (coordinate_to_row(start) == @black_knight && (@playerturn % 2 == 1))
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i - finish[1].to_i).abs == 2
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 2 && (start[1].to_i - finish[1].to_i).abs == 1
                    return true
                end
            elsif (coordinate_to_row(start) == @white_rook && (@playerturn % 2 == 0)) || (coordinate_to_row(start) == @black_rook && (@playerturn % 2 == 1))
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    a = start[1].to_i
                    b = finish[1].to_i
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                end
            elsif (coordinate_to_row(start) == @white_bishop && (@playerturn % 2 == 0)) || (coordinate_to_row(start) == @black_bishop && (@playerturn % 2 == 1))
                a = start[1].to_i
                b = finish[1].to_i
                if (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif (coordinate_to_row(start) == @white_queen && (@playerturn % 2 == 0)) || (coordinate_to_row(start) == @black_queen && (@playerturn % 2 == 1))
                a = start[1].to_i
                b = finish[1].to_i
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                elsif (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif (coordinate_to_row(start) == @white_king && (@playerturn % 2 == 0)) || (coordinate_to_row(start) == @black_king && (@playerturn % 2 == 1))
                a = start[1].to_i
                b = finish[1].to_i
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (a - b).abs <= 1
                    return true
                elsif start_letter_number[0] == finish_letter_number[0] && (a - b).abs == 1
                    return true
                end
            end
        end
    end

    def black_is_checked?(start)
        finish = black_kings_coordinate
        if start == finish
            return false
        elsif open_square?(start)
            return false
        end
        start_letter_number = start[0].bytes
        finish_letter_number = finish[0].bytes
        if open_square?(finish) || opposite_side?(start, finish)
            if coordinate_to_row(start) == @white_pawn
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i + 1 == finish[1].to_i) 
                    return true
                end
            elsif coordinate_to_row(start) == @white_knight 
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i - finish[1].to_i).abs == 2
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 2 && (start[1].to_i - finish[1].to_i).abs == 1
                    return true
                end
            elsif coordinate_to_row(start) == @white_rook && 
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    a = start[1].to_i
                    b = finish[1].to_i
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                end
            elsif coordinate_to_row(start) == @white_bishop 
                a = start[1].to_i
                b = finish[1].to_i
                if (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif coordinate_to_row(start) == @white_queen
                a = start[1].to_i
                b = finish[1].to_i
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                elsif (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif coordinate_to_row(start) == @white_king 
                a = start[1].to_i
                b = finish[1].to_i
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (a - b).abs <= 1
                    return true
                elsif start_letter_number[0] == finish_letter_number[0] && (a - b).abs == 1
                    return true
                end
            end
        end
    end

    def white_is_checked?(start)
        finish = white_kings_coordinate
        if start == finish
            return false
        elsif open_square?(start)
            return false
        end
        start_letter_number = start[0].bytes
        finish_letter_number = finish[0].bytes
        if open_square?(finish) || opposite_side?(start, finish)
            if coordinate_to_row(start) == @black_pawn 
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i - 1 == finish[1].to_i) 
                    return true
                end
            elsif coordinate_to_row(start) == @black_knight
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (start[1].to_i - finish[1].to_i).abs == 2
                    return true
                elsif (start_letter_number[0] - finish_letter_number[0]).abs == 2 && (start[1].to_i - finish[1].to_i).abs == 1
                    return true
                end
            elsif coordinate_to_row(start) == @black_rook
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    a = start[1].to_i
                    b = finish[1].to_i
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                end
            elsif coordinate_to_row(start) == @black_bishop
                a = start[1].to_i
                b = finish[1].to_i
                if (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif coordinate_to_row(start) == @black_queen 
                a = start[1].to_i
                b = finish[1].to_i
                if (finish.include?(start[0]))
                    first_letter = start[0]
                    until (a - b).abs == 1
                        if a < b
                            a += 1
                        elsif a > b
                            a -= 1
                        end
                        a = a.to_s
                        new_coordinate = first_letter + a
                        unless open_square?(new_coordinate)
                            return false
                        end
                        a = a.to_i
                    end
                    return true
                elsif (finish.include?(start[1]))
                    until (start_letter_number[0] - finish_letter_number[0]).abs == 1
                        if start_letter_number[0] < finish_letter_number[0]
                            start_letter_number[0] += 1
                        elsif start_letter_number[0] > finish_letter_number[0]
                            start_letter_number[0] -= 1
                        end
                        row_letter = start_letter_number[0].chr
                        new_coordinate = row_letter + start[1]
                        unless open_square?(new_coordinate)
                            return false
                        end
                    end
                    return true
                elsif (a - b).abs != (start_letter_number[0] - finish_letter_number[0]).abs
                    return false
                end
                until (start_letter_number[0] - finish_letter_number[0]).abs == 1
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
            elsif coordinate_to_row(start) == @black_king 
                a = start[1].to_i
                b = finish[1].to_i
                if (start_letter_number[0] - finish_letter_number[0]).abs == 1 && (a - b).abs <= 1
                    return true
                elsif start_letter_number[0] == finish_letter_number[0] && (a - b).abs == 1
                    return true
                end
            end
        end
    end

    def preplan_move(first_square, second_square)
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

    def white_kings_coordinate
        possible_coordinates = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8']
        possible_coordinates += ['d1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8']
        possible_coordinates += ['g1', 'g2', 'g3', 'g4', 'g5', 'g6', 'g7', 'g8', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'h7', 'h8']
        possible_coordinates.each do |coordinate|
            if coordinate_to_row(coordinate) == @white_king
                return coordinate
            end
        end
    end

    def black_kings_coordinate
        possible_coordinates = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8']
        possible_coordinates += ['d1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8']
        possible_coordinates += ['g1', 'g2', 'g3', 'g4', 'g5', 'g6', 'g7', 'g8', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'h7', 'h8']
        possible_coordinates.each do |coordinate|
            if coordinate_to_row(coordinate) == @black_king
                return coordinate
            end
        end
    end

    def white_check?
        possible_coordinates = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8']
        possible_coordinates += ['d1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8']
        possible_coordinates += ['g1', 'g2', 'g3', 'g4', 'g5', 'g6', 'g7', 'g8', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'h7', 'h8']
        possible_coordinates.each do |coordinate|
            if white_is_checked?(coordinate)
                return true
            end
        end
        return false
        #if the valid move to a kings position returns true, check will return true
    end

    def black_check?
        possible_coordinates = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8']
        possible_coordinates += ['d1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8']
        possible_coordinates += ['g1', 'g2', 'g3', 'g4', 'g5', 'g6', 'g7', 'g8', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'h7', 'h8']
        possible_coordinates.each do |coordinate|
            if black_is_checked?(coordinate)
                return true
            end
        end
        return false
        #if the valid move to a kings position returns true, check will return true
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

    def pawn_promotion(first_square)
        puts "Congratulations, your pawn is eligible for promotion! Please enter the piece you would like to replace it with"
        piece = gets.chomp.downcase
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
        if @playerturn % 2 == 0
            if piece == 'queen'
                @row8[column] = @white_queen
            elsif piece == 'bishop'
                @row8[column] = @white_bishop
            elsif piece == 'knight'
                @row8[column] = @white_knight
            elsif piece == 'rook'
                @row8[column] = @white_rook
            end
        elsif @playerturn % 2 == 1    
            if piece == 'queen'
                @row1[column] = @black_queen
            elsif piece == 'bishop'
                @row1[column] = @black_bishop
            elsif piece == 'knight'
                @row1[column] = @black_knight
            elsif piece == 'rook'
                @row1[column] = @black_rook
            end
        end
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
        advance = true
        white_castle = 0
        black_castle = 0
        until i == 15
            if @playerturn % 2 == 0
                turn = 1
            else
                turn = 2
            end
            if white_check? && turn == 1
                puts "Player #{turn}, you are checked. You must uncheck in order to continue playing"
            elsif black_check? && turn == 2
                puts "Player #{turn}, you are checked. You must uncheck in order to continue playing"
            end
            puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3), or type save to save"
            if (open_square?('f1') && open_square?('g1')) &&  (coordinate_to_row('h1') == "♖" && coordinate_to_row('e1') == "♔") && turn == 1 && white_castle == 0
                puts 'Or type castle to castle'
            elsif (open_square?('f8') && open_square?('g8')) &&  (coordinate_to_row('h8') == "♜" && coordinate_to_row('e8') == "♚") && turn == 2 && black_castle == 0
                puts 'Or type castle to castle'
            end
            starting_move = gets.chomp
            if starting_move == 'castle' && turn == 1 
                reassignment('h1', 'f1')
                reassignment('e1', 'g1')
                white_castle += 1
                if white_check? 
                    white_castle -= 1
                    reassignment('f1', 'h1')
                    reassignment('g1', 'e1')
                    advance = false
                    until advance
                        puts "That is an invalid move, try again"
                        puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3)"
                        starting_move = gets.chomp
                        puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                        ending_move = gets.chomp
                        if valid_move?(starting_move, ending_move)
                            reassignment(starting_move, ending_move)
                            advance = true
                        end
                        if (white_check? && turn == 1) || (black_check? && turn == 2)
                            reassignment(ending_move, starting_move)
                            advance = false
                        end
                    end
                end
            elsif starting_move == 'castle' && turn == 2 
                reassignment('h8', 'f8')
                reassignment('e8', 'g8')
                black_castle += 1
                if black_check? 
                    black_castle -= 1
                    reassignment('f8', 'h8')
                    reassignment('g8', 'e8')
                    advance = false
                    until advance
                        puts "That is an invalid move, try again"
                        puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3)"
                        starting_move = gets.chomp
                        puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                        ending_move = gets.chomp
                        if valid_move?(starting_move, ending_move)
                            reassignment(starting_move, ending_move)
                            advance = true
                        end
                        if (white_check? && turn == 1) || (black_check? && turn == 2)
                            reassignment(ending_move, starting_move)
                            advance = false
                        end
                    end
                end
            else
                puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                ending_move = gets.chomp
                if valid_move?(starting_move, ending_move)
                    reassignment(starting_move, ending_move)
                    if (white_check? && turn == 1) || (black_check? && turn == 2)
                        reassignment(ending_move, starting_move)
                        advance = false
                        until advance
                            puts "That is an invalid move, try again"
                            puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3)"
                            starting_move = gets.chomp
                            puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                            ending_move = gets.chomp
                            if valid_move?(starting_move, ending_move)
                                reassignment(starting_move, ending_move)
                                advance = true
                            end
                            if (white_check? && turn == 1) || (black_check? && turn == 2)
                                reassignment(ending_move, starting_move)
                                advance = false
                            end
                        end
                    end
                else
                    advance = false
                    until advance
                        puts "That is an invalid move, try again"
                        puts "Player #{turn}, Which piece would you like to move? Enter a coordinate (e.g. a3)"
                        starting_move = gets.chomp
                        puts "Where would you like to move to? Enter a coordinate (e.g. a5)"
                        ending_move = gets.chomp
                        if valid_move?(starting_move, ending_move)
                            reassignment(starting_move, ending_move)
                            advance = true
                        end
                        if (white_check? && turn == 1) || (black_check? && turn == 2)
                            reassignment(ending_move, starting_move)
                            advance = false
                        end
                    end
                end
                


                if coordinate_to_row(ending_move) == @white_pawn && ending_move.include?('8')
                    pawn_promotion(ending_move)
                elsif coordinate_to_row(ending_move) == @black_pawn && ending_move.include?('1')
                    pawn_promotion(ending_move)
                end
            end
            
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