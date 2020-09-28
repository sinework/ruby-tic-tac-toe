require_relative '../lib/player'

require_relative '../lib/game'

game = Game.new

board = game.game_arr

def welcome_screen(game, _board)
  name = ''

  puts 'Welcome to TIC-TAC-TOE'

  puts "First player, What's your name?"

  loop do
    name = gets.chomp

    unless game.name_check(name)

      puts "Your name cannot be an empty line or a number \n \n \n"

      puts "Please enter a valid name \n"

    end

    break if game.name_check(name) == true
  end

  game.player1.name = name

  puts "Hi #{game.player1.name} , your key is #{game.player1.key} "

  puts "Second player, What's your name?"

  loop do
    name = gets.chomp

    unless game.name_check(name) && !game.compare_names(game.player1.name, name)

      puts "Your name cannot be an empty line or a number \n \n"

      puts "Please enter a valid name \n"

    end

    break if game.name_check(name) == true && !game.compare_names(game.player1.name, name)
  end

  game.player2.name = name

  puts "Hi #{game.player2.name} , your key is #{game.player2.key} "

  puts game.display_board(game.game_arr)
end

# Ask for input

def ask_input(plyr)
  puts "#{plyr}, make your move!"
end

def recieve_turns
  gets.chomp.to_i - 1
end

# invalid position

def position_error
  puts 'please enter valid position'
end

# Annouce winner

def announce_winner(name)
  Gem.win_platform? ? (system 'cls') : (system 'clear')

  puts "Congrats #{name}, you have won! "
end

def draw
  Gem.win_platform? ? (system 'cls') : (system 'clear')

  puts 'It is a draw!'
end
# Start game method is moved here

def start_game(game, board)
  i = 0

  player_counter = 0

  win = false

  while i < 9 && win == false

    valid_pos = false

    input_req = player_counter.even? ? game.player1.name : game.player2.name

    ask_input(input_req)

    until valid_pos == true

      user_in = recieve_turns

      if game.validate_move(user_in, board)

        if player_counter.even?

          game.player1.choice_array.push(user_in + 1)

          board[user_in] = game.player1.key

          if game.check_win?(game.player1.choice_array)

            announce_winner(game.player1.name)

            win = true

          end

        else

          game.player2.choice_array.push(user_in + 1)

          board[user_in] = game.player2.key

          if game.check_win?(game.player2.choice_array)

            announce_winner(game.player2.name)

            win = true

          end

        end

        valid_pos = true

      else

        position_error

      end

    end

    # display_board(game.game_arr)
    puts game.display_board(game.game_arr)
    i += 1

    player_counter += 1

  end
  draw unless win == true
end

welcome_screen(game, board)

start_game(game, board)
