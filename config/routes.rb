Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show]
  resources :reviews, only: [:index, :show, :create, :update, :delete]
  resources :favorites, only: [:index, :show, :create, :delete]
end
