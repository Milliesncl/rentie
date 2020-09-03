Rails.application.routes.draw do
  %w( 404 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

  devise_for :users
  get "welcome", to: 'pages#home'
  root to: 'pages#home'

  resources :rent_payments, only: [:show, :create] do
    resources :transactions, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :tenants, only: [:create, :new, :edit, :update]
  resources :contractors, except: [:destroy]
  resources :tasks, only: [:new, :index, :create, :edit, :update] do
    patch :update_status, on: :member
  end

  resources :buildings, except: [:show] do
    resources :units, only: [:show, :new, :create, :edit, :update]
  end

  resources :units, only: [:destroy]
  get "units/:id/lease", to: 'units#lease', as: 'units_lease'
end
