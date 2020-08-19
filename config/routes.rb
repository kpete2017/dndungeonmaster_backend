Rails.application.routes.draw do
  resources :enemies
  resources :allies
  resources :rotations
  resources :regions
  resources :notes
  resources :npcs
  resources :players
  resources :users
  post 'login', to: 'authentication#login'
end