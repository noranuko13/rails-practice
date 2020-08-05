# frozen_string_literal: true

# Rails Routing from the Outside In
# https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'

  get '/about', to: 'pages#about'

  resources :products do
    collection do
      delete 'destroy_multiple'
    end
  end
end
