require'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require_relative 'Board'
require_relative 'Show'


class Board < Board_Cases
 attr_accessor :all_cases, :tab

#affichage des 9 cases
#(relie BoardCase et Game) remplit class Boardcase avec des strings "x" et "o"
#Appelle à BoardCase ppour déterminer qui est le gagnant
#  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

	def initialize  #Elle doit créer 9 instances BoardCases rangées dans un array/hash qui est l'attr_accessor de la classe
		@tab = []
		@all_cases = ['0', '1', '2', '3', '4', '5', '6', '7', '8']
  	end


	def play_turn (player)

		i= 0
		
		puts "C'est le tour de #{@nom}. Où souhaites-tu positionner ton pion ? Entre la position de la case."
		choice = gets.chomp.to_s

		if @case_symbol != " "
			puts "pas de place"
		else 		
			@all_cases.each do |i| 
				
				if i = choice
					@case_symbol = @symbol
				end
			end 

		end 	
		
		puts "#{@nom} s'est positionné sur #{choice}."
		
		@tab << choice
		
		i+=1
	end

	def victory?(player)    
		win_tab =[["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["C1","B2","A3"],["A1","B2","C3"]]

	    if win_tab.each {|i| i == @tab.sort}
	    	@status = @current_player
	    elsif i == 9
	    	@status = "nul"
	    else
	    	puts "La partie continue..."
	    	@status = "en cours"
	    end
	end
end




