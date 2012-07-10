LojaOnline::Application.routes.draw do
  get "welcome/index"
  get "sessions/new"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "about" => "welcome#about", :as => "about"
  get "where_to_buy" => "welcome#where_buy", :as => "where_to_buy"
  
  root :to => "welcome#index"
  
  resources :users
  resources :sessions
  resources :welcome
end
