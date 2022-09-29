require './lib/chess'
describe Board do
    describe '#coordinate_to_row' do
        it 'returns a piece of an occupied square' do
            board = Board.new
            expect(board.coordinate_to_row('a2')).to eql("♙")
        end
    end

    describe '#open_square?' do 
        it 'returns true if a square does not have a piece in it' do
            board = Board.new
            expect(board.open_square?('b4')).to be true
        end
    end

    describe '#valid_move?' do
        it 'returns true if a pawn moves two squares on the opening move' do
            board = Board.new
            expect(board.valid_move?('a7', 'a5')).to be true
        end

        it 'returns true if a pawn moves one square ahead' do
            board = Board.new
            expect(board.valid_move?('a2', 'a3')).to be true
        end

        it 'returns true if a knight moves 2 up and 1 to the right' do
            board = Board.new
            expect(board.valid_move?('b1', 'a3')).to be true
        end

        it 'does not return true if a move is out of bounds' do
            board = Board.new
            expect(board.valid_move?('g1', 'i3')).not_to be true
        end
    end

    describe '#move_to_second_square' do
        it 'moves a pawn two square ahead' do
            board = Board.new
            board.move_to_second_square('a7', 'a5')
            expect(board.coordinate_to_row('a5')).to eql("♟")
        end
    end
end
