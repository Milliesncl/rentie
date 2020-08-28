Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/registrations' }
  root to: 'pages#home'

  resources :users, except: :create

  post 'create_user' => 'users#create', as: :create_user      

  resources :contractors, except: [:destroy]
  resources :tasks, only: [:new, :index, :create, :edit, :update]

  resources :buildings, except: [:index] do
    resources :units, only: [:show, :new, :create, :edit, :update]
  end

  resources :units, only: [:destroy]
  get "units/:id/lease", to: 'units#lease', as: 'units_lease'
end