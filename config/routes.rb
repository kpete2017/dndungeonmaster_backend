Rails.application.routes.draw do
  resources :regions
  resources :notes
  resources :npcs
  resources :players
  resources :users
  post 'login', to: 'authentication#login'
end