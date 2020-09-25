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