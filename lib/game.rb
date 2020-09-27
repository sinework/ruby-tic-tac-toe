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

  def start_game
    i = 0

    player_counter = 0

    win = false

    while i < 9 && win == false

      valid_pos = false

      input_req = player_counter.even? ? @player1.name : @player2.name

      ask_input(input_req)

      until valid_pos == true

        user_in = recieve_turns

        if validate_move(user_in, @game_arr)

          if player_counter.even?

            @player1.choice_array.push(user_in + 1)

            @game_arr[user_in] = @player1.key

            if check_win?(WINNING_SET, @player1.choice_array)

              announce_winner(@player1.name)

              win = true

            end

          else

            @player2.choice_array.push(user_in + 1)

            @game_arr[user_in] = @player2.key

            if check_win?(WINNING_SET, @player2.choice_array)

              announce_winner(@player2.name)

              win = true

            end

          end

          valid_pos = true

        else

          position_error

        end

      end

      display_board(@game_arr)

      i += 1

      player_counter += 1

    end
    draw unless win == true
  end

  # Check if its a winning move

  def check_win?(win_set, player_arr)
    win_set.length.times do |item|
      return true if win_set[item].all? { |x| player_arr.include?(x) }
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
  # Validating the user name

  def validate_name(name)
    if name.scan(/\D/).empty?

      false

    else

      true

    end
  end

  # End of class
end
