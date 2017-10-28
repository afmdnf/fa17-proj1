class PokemonsController < ApplicationController

	def create
		@pokemon = Pokemon.create(name: params[:pokemon][:name])
		@pokemon.trainer = current_trainer
		@pokemon.level = 1
		@pokemon.health = 100
		if @pokemon.save
			@pokemon.save!
			redirect_to current_trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to :action => 'new'
		end
	end
	
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to trainer_path(Trainer.find(params[:tr]))
	end
end
