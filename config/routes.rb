Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/sign_up' => 'devise/registrations#new'
  post '/users' => 'devise/registrations#create'

  get '/users/sign_in' => 'devise/sessions#new'
  post 'users/sign_in' => 'devise/sessions#create'
  get '/users/sign_out' => 'devise/sessions#destroy'
end
