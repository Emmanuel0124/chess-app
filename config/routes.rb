Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/games" => "games#index"
  post "/games" => "games#create"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


end
