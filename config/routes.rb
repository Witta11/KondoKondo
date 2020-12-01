Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :kondos, only: [:index, :new, :create, :destroy, :edit, :update, :reserve] do
    resources :favorites, only: [:create]
  end

  get 'kondos/random', to: 'kondos#random'

  get 'dashboard', to: 'dashboard#show', as: :dashboard

  resources :favorites, only: [:destroy]

  get '/split', to: 'pages#split'


  post '/dashboard/kondo_update', to: 'kondos#reserve'

  resources :chatrooms, only: [:show, :create, :index] do 
    resources :messages, only: [:create]
  end 

  get '/dashboard/kondo_reserve', to: 'kondos#reserve'
  get '/dashboard/kondo_active', to: 'kondos#active'

end
