#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/player'

class Tictactoe
  attr_accessor :board, :name

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @name = []
  end

  