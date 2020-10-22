Rails.application.routes.draw do

  root 'application#home'

  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :studios
  resources :studio_sessions
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

