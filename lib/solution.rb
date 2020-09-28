#!/usr/bin/env ruby
require 'pry'
require_relative '../bin/user.rb'

puts "Welcome to Tic Tac Toe!"
game = Tic_tac_toe.new
game.welcome
game.display_board
game.user_name
game.play