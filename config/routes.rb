Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :kondos, only: [:index, :new, :create, :destroy, :edit, :update] do
    resources :favorites, only: [:create]
  end

  resources :dashboard, only: [:index]

  resources :favorites, only: [:destroy]

  get '/split', to: 'pages#split'
end
