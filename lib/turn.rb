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