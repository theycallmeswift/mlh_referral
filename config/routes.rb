Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'hackthons#index'
  
  resources :hackathons, only: [:index, :show]
  resources :rsvps, only: [:create, :destroy]
end
