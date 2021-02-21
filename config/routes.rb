Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"  
  resources :items, only: [:new, :create]
  # post "items/new" => "items#new"
end
