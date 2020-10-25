Rails.application.routes.draw do

  root 'application#home'

  #You can only create a StudioSession as a studio manager Role, and if you do create StudioSessions, only studios you manage will be available to select from.

  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :studios do
    resources :studio_sessions, only: [:show, :index, :new, :edit]
  end

  resources :studio_sessions
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

