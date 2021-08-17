Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'trips-choice', to: 'trips#trip_choice'
  get 'trips-category', to: 'trips#trip_category'
  resources :trips
  resources :bookings, only: [:index, :create, :show, :destroy]
end
