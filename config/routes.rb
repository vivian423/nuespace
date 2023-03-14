Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"

  resources :listings do
    resources :bookings, only: [ :new, :create, :destroy ]
  end

  resources :bookings, only: :index do
    resources :reviews, only: [ :new, :show, :create, :destroy ]
  end
end
