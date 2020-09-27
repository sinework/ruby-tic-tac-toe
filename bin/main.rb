require_relative '../lib/player'

require_relative '../lib/game'

game = Game.new

board = game.game_arr

def welcome_screen(game, board)
  name = ''

  puts 'Welcome to TIC-TAC-TOE'

  puts "First player, What's your name?"

  loop do
    name = gets.chomp

    unless game.validate_name(name)

      puts "Your name cannot be an empty line or a number \n \n \n"

      puts "Please enter a valid name \n"

    end

    break if game.validate_name(name) == true
  end

  game.player1.name = name

  puts "Hi #{game.player1.name} , your key is #{game.player1.key} "

  puts "Second player, What's your name?"

  loop do
    name = gets.chomp

    unless game.validate_name(name)

      puts "Your name cannot be an empty line or a number \n \n"

      puts "Please enter a valid name \n"

    end

    break if game.validate_name(name) == true
  end

  game.player2.name = name

  puts "Hi #{game.player2.name} , your key is #{game.player2.key} "

  display_board(board)
end

# displaying the game board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "

  puts '-----------'

  puts " #{board[3]} | #{board[4]} | #{board[5]} "

  puts '-----------'

  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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

welcome_screen(game, board)

game.start_game
