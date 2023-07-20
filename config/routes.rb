Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :games 


  resources :games do
    resources :comments, only: [:index, :create], controller: 'comments'
  end

  # get "/games" => "games#index"
  # get "/games/:id" => "games#show"
  # post "/games" => "games#create"
  # patch "/games/:id" => "games#update"

  resources :users
  resources :sessions

 

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"


  resources :comments

  post "/games/:id" => "comments#create"


end
