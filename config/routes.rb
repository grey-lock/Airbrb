Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  
  root 'static_home#root'
  
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :create, :show]
    get 'users/:user_id/bookings', to: 'bookings#index'
    
    resources :listings, only: [:index, :create, :show]
    get 'listings/:listing_id/bookings', to: 'bookings#index'
    get 'listings/:listing_id/reviews', to: 'reviews#index'
    
    resources :bookings, only: [:index, :show, :create, :destroy]
    resources :reviews, only: [:create, :show, :destroy]
  end

end
