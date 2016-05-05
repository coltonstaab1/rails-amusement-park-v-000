Rails.application.routes.draw do
  root :to => "static#home"
  get '/signin', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'

  resources :users
end