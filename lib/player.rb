require 'pry'
require_relative '../bin/main.rb'

board = TicTacToe.new
board.welcome
board.display_board
board.play
