def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if input =~ /[^1-9]/ 
    turn(board)
  else
    index = input_to_index(input)
    move(board, index)
    display_board(board)
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index,character = "X")
  board[index] = character
end


def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

 def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
