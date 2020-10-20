Rails.application.routes.draw do

  root 'application#home'

  resources :studios
  resources :studio_sessions
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
