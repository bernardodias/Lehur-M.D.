LojaOnline::Application.routes.draw do


  get "welcome/index"
  get "sessions/new"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "about" => "welcome#about", :as => "about"
  get "where_to_buy" => "welcome#where_buy", :as => "where_to_buy"
  get "new_category" => "categories#new", :as => "new_category"
  get "new_subcategory" => "subcategories#new", :as => "new_subcategory"
  get "new_product" => "products#new", :as => "new_product"
  
  root :to => "welcome#index"
  
  resources :users
  resources :sessions
  resources :welcome
  resources :products
  resources :categories
  resources :subcategories
end
