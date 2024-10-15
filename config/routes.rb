Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :movies, only: [:new, :create, :show]
  root 'welcome#index'
end