Rails.application.routes.draw do
    # error pages
  %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'trips-choice', to: 'trips#trip_choice'
  get 'trips-category', to: 'trips#trip_category'
  resources :trips
  resources :bookings, only: [:index, :create, :show, :destroy]
end
