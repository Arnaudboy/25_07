require'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require 'Board.rb'
require_relative 'Show'



class Show < Board

	def show_board(board)
#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
	puts "#{ @all_cases[0]} | #{@all_cases[1]} | #{@all_cases[2]}"
	puts "-"*20
	puts "#{@all_cases[3]} | #{@all_cases[4]} | #{@all_cases[5]}"
	puts "-"*20
	puts "#{@all_cases[6]} | #{@all_cases[7]} | #{@all_cases[8]}"
	end
end