Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#owner_home'

  resources :tenants, only: [:create, :new, :edit, :update]
  resources :contractors, except: [:destroy]
  resources :tasks, only: [:new, :index, :create, :edit, :update]

  resources :buildings, except: [:show] do
    resources :units, only: [:show, :new, :create, :edit, :update]
  end

  resources :units, only: [:destroy]
  get "units/:id/lease", to: 'units#lease', as: 'units_lease'
end
