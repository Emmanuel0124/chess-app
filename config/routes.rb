Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :games 

  # get "/games" => "games#index"
  # get "/games/:id" => "games#show"
  # post "/games" => "games#create"
  # patch "/games/:id" => "games#update"

  resources :users
  resources :sessions

  # post "/users" => "users#create"
  # post "/sessions" => "sessions#create"


end
