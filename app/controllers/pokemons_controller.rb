class PokemonsController < ApplicationController
  def create
	  @pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
	  @pokemon.level = 1
    @pokemon.health = 100
	   @pokemon.trainer = current_trainer
	  if @pokemon.save
      redirect_to current_trainer
	  else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end

  def new
    @pokemon = Pokemon.new
  end

  def heal
    pkmn = Pokemon.find(params[:id])
    if pkmn.health < 90
      pkmn.health += 10
      pkmn.save
    else
      pkmn.health = 100
      pkmn.save
    end
    redirect_to "/trainers/#{pkmn.trainer_id}"
  end

  def capture
    pkmn = Pokemon.find(params[:id])
    pkmn.trainer_id = current_trainer.id
    pkmn.save
    redirect_to "/"
  end

  def damage
    pkmn = Pokemon.find(params[:id])
    if pkmn.health > 10
      pkmn.health -= 10
      pkmn.save
    else
      pkmn.health = 0
      pkmn.save
    end
    redirect_to "/trainers/#{pkmn.trainer_id}"
  end
end
