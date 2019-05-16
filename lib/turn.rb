def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true  
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index,character = "X")
  board[index] = character
end


def valid_move?(board, index)
  if index.isbetween? && position_taken?(board, index) == false
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
