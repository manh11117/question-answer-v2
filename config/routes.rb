# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  namespace :admin do
    get "/", to: "home#index"
    resources :users
    resources :sessions
    resources :questions do
<<<<<<< HEAD
      resources :answes
=======
      resources :answers
>>>>>>> 5c0975a... ticket9794 : Design and create questions and answers tables and models
    end
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
end
