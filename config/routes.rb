Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture/:id', to: 'pokemons#capture', as: 'capture'
  patch 'damage/:id', to: 'pokemons#damage', as: 'damage'
  get 'pokemons/new', to: 'pokemons#new', as: 'new_pokemon'
  devise_for :trainers
  resources :trainers
  resources :pokemons
end
