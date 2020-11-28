Rails.application.routes.draw do

  root 'application#home'

  get '/auth/google_oauth2/callback' => 'sessions#google'

  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'la', to: 'studios#la'

  resources :studios do
    resources :studio_sessions, only: [:show, :index, :new, :edit]
  end

  resources :studio_sessions
  
  resources :users do
    resources :studio_sessions, only: [:show, :index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end