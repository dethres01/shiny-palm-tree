Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :playlists
  devise_for :users
  resources :songs
  get '/search' => 'search#search'
  authenticated :user do
    root :to => "songs#index", as: :authenticated_root
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
