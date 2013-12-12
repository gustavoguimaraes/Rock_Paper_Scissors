require 'bundler'
Bundler.require
#require './lib'

module Game 
  class RPS_App < Sinatra::Application

    # get '/' do
    # "Hello World"
    # end

    get '/' do
     erb :index
    end


 	get '/throw/move/:name' do
		@human = params[:name]
		@computer = ["rock", "paper", "scissors"].sample
		while true
			if @human == "rock" && @computer == "scissors"
				@result = "Rock Beats Scissors. You Win!"
				break
			elsif @human == "paper" && @computer == "rock"
				@result = "Paper Beats Rock. You Win!"
				break
			elsif @human == "scissors" && @computer == "paper"
				@result = "Scissors Beats Paper. You Win!"
				break
			elsif @human == @computer
			 	@result == "Tie. Play again"
			else 
				@result = "Computer Wins. You lose!"
				break
			end	
		
		end

     erb :move
  	end

  end
end