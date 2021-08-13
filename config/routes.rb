Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'trips-choice', to: 'trips#trip_choice'
  get 'trips-category', to: 'trips#trip_category'
  resources :trips do 
    resources :bookings, only: [:index, :show]
  end
end
