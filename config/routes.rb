Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :contractors, except: [:destroy]
  resources :tasks, only: [:new, :index, :create, :edit, :update]

  resources :buildings, except: [:index] do
    resources :units, only: [:show, :new, :create, :edit, :update] do
      match 'download', to: 'units#download', as: 'download', via: :get
    end
  end

  resources :units, only: [:destroy]
end
