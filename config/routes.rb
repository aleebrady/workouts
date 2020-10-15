Rails.application.routes.draw do
  
  #get 'workouts/:id' => 'workouts#show'
  
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :trainers
  resources :workouts

  resources :users

end
