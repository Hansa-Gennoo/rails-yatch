Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :destroy]
  resources :yachts do
    resources :bookings
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  devise_scope :user do
    authenticated :user do
      root "yachts#index", as: :authenticated_root
    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end
end
