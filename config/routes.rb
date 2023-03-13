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
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/show'
  # get 'reviews/destroy'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'listings/index'
  # get 'listings/show'
  # get 'listings/new'
  # get 'listings/create'
  # get 'listings/edit'
  # get 'listings/update'
  # get 'listings/destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
