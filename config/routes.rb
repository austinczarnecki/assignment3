RedditDemo::Application.routes.draw do
  resources :votes


  resources :comments


  resources :posts


  resources :users
  root to: 'posts#index'
end