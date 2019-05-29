Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :make_models
  resources :car_makes
  resources :car_posts
  resources :reviews
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
