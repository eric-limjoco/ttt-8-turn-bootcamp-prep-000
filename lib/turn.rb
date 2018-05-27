def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i + - 1
end

def position_taken?(board, index)
  
  if board[index] == "X" || board[index] == "O"
    return true
  end
  
  return false
  
end

def valid_move?(board, index)
  
  if !position_taken?(board, index) && index >= 0 && index <= 8
    return true
  end
  
  return false
end

def move(board, index, char="X")
  
  if valid_move?(board, index)
    board[index] = char
  end
  
end