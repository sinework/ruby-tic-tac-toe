#!/usr/bin/env ruby

puts "Hello, World!"

puts "WELCOME TO THIS TIC-TAC-TOE GAME"
puts "Press 'ENTER' to begin"
puts "Press 'ESC' to exit"

gets.chomp

#player1
puts "\nPlayer 1:"
player1 = gets.chomp

puts "\nPlayer 2:"
player2 = gets.chomp


#numbers to use place in a square
puts 'Pleas choose a number between 1-9'

board = ['', '', '', '', '', '', '', '', '']

def display_board(board)
  %(#{borad[0]} | #{borad[1]} | #{borad[2]}
----------------
#{borad[3]} | #{borad[4]} | #{borad[5]} 
----------------
#{borad[6]} | #{borad[7]} | #{borad[8]}
  )
end
player1=gets.chomp
 puts "Amine chose #{player1}"
 puts 'Pleas choose a number between 1-9'
 player2=gets.chomp
 puts "Sine chose #{player2}"

 #until a winning combination is reached or the game is a draw the code will be excuted
puts "This was a draw. Do you want to play again?"
response = gets.chomp
puts "The game has ended!" 