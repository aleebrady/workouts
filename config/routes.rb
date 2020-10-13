Rails.application.routes.draw do
  resources :workouts
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  resources :users

end
