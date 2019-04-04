# frozen_string_literal: true

Rails.application.routes.draw do
	root to: 'admin/home#index'
  namespace :admin do
  	resources :home
	resources :sessions
	resources :password_resets,     only: [:new, :create, :edit, :update]
	get '/signup', to: 'users#new'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
  end
end
