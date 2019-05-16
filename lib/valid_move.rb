def valid_move?(board, index)
  index = index.to_i
  if index > 0 && index < 10 && !position_taken?(board,index)
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