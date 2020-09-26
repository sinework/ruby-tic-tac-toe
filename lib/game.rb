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

 valid_pos=false
 input_req=player_counter%2==0 ? @player1.name : @player2.name
 ask_input(input_req)
while !valid_pos   
user_in= get_turns()
puts user_in
if validate_move(user_in,@game_arr)

 if player_counter%2==0
   @player1.choice_array.push(user_in)
   @game_arr[user_in]=@player1.key
 else
  @player2.choice_array.push(user_in)
  @game_arr[user_in]=@player2.key
 end

valid_pos=true
else
  position_error
end

end
display_board(@game_arr)
i+=1
player_counter += 1
end 
  
end
# Check if its a winning move

def check_win(player_counter)
if player_counter%2==0
  @player1.choice_array
end
end  

# End of class
end