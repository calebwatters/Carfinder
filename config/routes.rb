Rails.application.routes.draw do
  resources :users
  resources :make_models
  resources :car_makes
  resources :car_posts
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
