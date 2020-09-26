#!/usr/bin/env ruby
require 'pry'
require_relative '../bin/user-interface.rb'
game = TicTacToe.new
game.welcome
game.display_board
game.user_name

game.play