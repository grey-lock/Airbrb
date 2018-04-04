Rails.application.routes.draw do
  
  root 'static_home#root'
  
  namespace :api, defaults: { format: :json } do
    post 'user_token' => 'user_token#create'
    
    resources :users, only: [:index, :create, :show]
    get 'users/:user_id/bookings', to: 'bookings#index'
    
    resources :listings, only: [:index, :create, :show]
    get 'listings/:listing_id/bookings', to: 'bookings#index'
    get 'listings/:listing_id/reviews', to: 'reviews#index'
    
    resources :bookings, only: [:index, :show, :create, :destroy]
    resources :reviews, only: [:create, :show, :destroy]
  end

end
