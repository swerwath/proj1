class PokemonsController < ApplicationController
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
      pkmn.destroy
    end
    redirect_to "/trainers/#{pkmn.trainer_id}"
  end
end
