require 'bundler'
Bundler.require
#require './lib'

module Game 
  class RPS_App < Sinatra::Application


    get '/' do
     erb :index
    end


 	get '/throw/move/:name' do
		#debugger
    @human = params[:name]
		@computer = ["rock", "paper", "scissors"].sample
		
			if @human == "rock" && @computer == "scissors"
				@result = "Rock Beats Scissors. You Win!"
				
			elsif @human == "paper" && @computer == "rock"
				@result = "Paper Beats Rock. You Win!"
				
			elsif @human == "scissors" && @computer == "paper"
				@result = "Scissors Beats Paper. You Win!"
				
			elsif @human == @computer
			 	@result = "Tie. Play again"
			else 
				@result = "Computer Wins. You lose!"
				
			end	

     erb :move
  	end

  end
end