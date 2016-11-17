Rails.application.routes.draw do

  resources :sessions, only: [:create, :destroy, :new]

  root 'static#index', to: 'static#index'
  resources :users

end
