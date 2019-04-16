# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  namespace :admin do
    get "/", to: "home#index"
    resources :users
    resources :sessions
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
end
