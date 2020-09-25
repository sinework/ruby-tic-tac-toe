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
end

def validate_name(name)
  return true unless name == '' || name == ' '
end
welcome_screen(game , board)
