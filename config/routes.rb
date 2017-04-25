# require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'

  root to: 'home#index'
  get 'home/index', to: 'home#index'
  get 'persons/profile', as: 'user_root'
  # mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
