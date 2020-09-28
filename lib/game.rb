require_relative '../lib/player'

class Game
  WINNING_SET = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze

  attr_reader :player1, :player2, :game_arr

  def initialize
    @player1 = Player.new('', 'X')

    @player2 = Player.new('', 'O')

    @game_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  #  Start game method was here

  # Check if its a winning move

  def check_win?(player_arr)
    WINNING_SET.length.times do |item|
      return true if WINNING_SET[item].all? { |x| player_arr.include?(x) }
    end

    false
  end
  # validate move

  def validate_move(mov, game_board)
    if !mov.between?(0, 8) || !game_board[mov].is_a?(Integer)

      false

    else

      Gem.win_platform? ? (system 'cls') : (system 'clear')

      true

    end
  end

  # return name check
  def name_check(name)
    @player1.validate_name(name)
  end
  # End of class
end
