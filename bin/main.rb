#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/game'

game = Game.new

board = game.game_arr

def welcome_screen(game,board)
  name=""
  puts 'Welcome to TIC-TAC-TOE'
  loop do
    puts "First player, What's your name?"
    name = gets.chomp
    break if validate_name(name)
  end
  game.player1.name = name
  puts "Hi #{game.player1.name} , your key is #{game.player1.key}"
  loop do
    puts "Second player, What's your name?"
    name = gets.chomp
    break if validate_name(name)
  end
  game.player2.name = name
  puts "Hi #{game.player2.name} , your key is #{game.player2.key}"
display_board(board,game)
end

# displaying the game board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  get_turns(board,game)
end  
def get_turns(board,game)
  puts "#{game.player1.name}, make your move!"
end  
# Validating the user name
def validate_name(name)
  return true unless name == '' || name == ' '
end
welcome_screen(game, board)
