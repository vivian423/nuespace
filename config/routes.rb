Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :listings do
    resources :bookings, only: [ :new, :create, :destroy ]
  end

  resources :bookings, only: :index do
    resources :reviews, only: [ :new, :show, :create, :destroy ]
  end

  resources :pages, only: :dashboard

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
