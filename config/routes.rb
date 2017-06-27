Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'hackathons#index'

  resources :hackathons, only: [:index, :show]
  resources :rsvps, only: [:create, :destroy]

  get '/account' => 'users#account', as: :account
end
