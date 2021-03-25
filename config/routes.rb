Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'users#index'
  resources :images do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end