Rails.application.routes.draw do
  resources :trainers
  resources :workouts
  #get 'workouts/:id' => 'workouts#show'
  
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users

end