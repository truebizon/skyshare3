Rails.application.routes.draw do
  devise_for :users
  root 'skies#index'
  resources :skies do
    resources :reviews, only: [:create]
  end
  resources :users, only: [:show]
end
