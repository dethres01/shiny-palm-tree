Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :playlists
  devise_for :users
  resources :songs
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
