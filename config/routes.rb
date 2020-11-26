Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :kondos, only: [:index, :new, :create, :destroy, :edit, :update] do

    resources :favorites
  end
  resources :dashboard, only: [:index]
  get '/split', to: 'pages#split'
end
