RedditDemo::Application.routes.draw do
  get "log_out" => "sessions#destroy", as: :log_out
  get "log_in" => "sessions#new", as: :log_in

  get "sign_up" => "users#new", as: :sign_up

  root to: "posts#index" 

  resources :sessions
  resources :votes
  resources :comments
  resources :posts
  resources :users
  
end