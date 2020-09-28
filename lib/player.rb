#!/usr/bin/env ruby
require 'pry'
require_relative '../bin/user-interface.rb'
board = TicTacToe.new
board.welcome
board.display_board
board.play
