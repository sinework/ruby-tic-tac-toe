#!/usr/bin/env ruby
require_relative '../lib/player'
class Game
  WINNING_SET = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze
  attr_accessor :player1, :player2, :game_arr
  def initialize
    @player1 = Player.new('', 'X')
    @player2 = Player.new('', 'O')
    @game_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

def start_game
    i=0
    player_counter=0
    while(i<9)
   
user_in= player_counter%2==0? get_turns(@player1):get_turns(@player2)
puts user_in

i+=1
player_counter += 1
  end 
  
end

end