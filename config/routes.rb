Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"  
  resources :items do
    resources :orders, only: [:index, :create]
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] do
    get :favorites, on: :collection
  end
end
