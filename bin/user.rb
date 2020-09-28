#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "../lib/solution.rb"

class Tic_tac_toe
  attr_accessor :board, :name

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @name = []
  end

  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [6, 4, 2],
  [0, 4, 8]
]

  def welcome
    puts `clear`
    puts "Welcome to Tic Tac Toe"
    puts " "
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts " "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def valid_move(input)
    @board[position] = token
  end

  def position_taken?(input)
    input.between?(0, 8) && !position_taken?(input)
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def turn
    @current_player = @current_player == @name[0] ? @name[1] : @name[0]
    puts "#{@current_player}, choose a spot between 1-9"
    spot = gets.strip.to_i
    until spot.positive?
      puts "Please enter a valid move"
      spot = gets.strip.to_i
    end
    display_board
  end

  def turn_count
    taken = 0
    @board.each do |i|
      taken += 1 unless i.nil?
    end
    taken
  end

  def user_name
    2.times do |i|
      puts "Please enter name of player #{i + 1}:"
      @name << gets.strip
    end
  end

  def play
    until over?
      turn
    end

    if won?
      winner = winner()
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat\'s Game!"
    end
  end

end


puts "Congratulations you WON!!!"
