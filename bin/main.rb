#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/player'

class Tictactoe
  attr_accessor :board, :name

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @name = []
  end

  def welcome
    puts `clear`
    puts 'Welcome to Tic Tac Toe'
    puts ' '
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts ' '
  end

  def move(index, current_player)
    @board[index] = @current_player
    p board
    puts "Now, #{current_player} move is displayed on the board"
  end

  def move_board(idx)
    @board[idx] = 'X'
  end

  