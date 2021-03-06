class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WIN_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  # a = TicTacToe.new
  # a.display_board
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  def move(index, token)
    @board[index] = token
  end

  def position_taken?(index)
    @board[index] != " "
  end

  def valid_move?(position)
    position.between?(0,8) && !position_taken?(position)
  end

  def turn
    input = gets.strip
    converted_input = input_to_index(input)

    if valid_move?(converted_input)
      token = current_player
      move(converted_input, token)
      display_board
    else
      turn
    end

  end

  def turn_count
    turn = 0
    @board.each do |index|
    if index == "X" || index == "O"
    turn += 1
  end
end
  return turn
end


def won?
end

def full?
end

def draw
end

def over
end

def winner
end

def play
end

end
