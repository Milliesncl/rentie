Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :contractors, except: [:destroy]
  resources :tasks, only: [:new, :index, :create, :edit, :update]

  resources :buildings, except: [:index] do
    resources :units, only: [:show, :new, :create, :edit, :update]
  end

  resources :units, only: [:destroy]
end
