def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if input =~ /[^1-9]/ 
    turn(board)
  else
    move(board, index)
    index = input_to_index(input)
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index,character = "X")
  board[index] = character
end