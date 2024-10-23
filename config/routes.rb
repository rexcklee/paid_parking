Rails.application.routes.draw do
  # resources :parking_spots, only: %i[index show]
  # get "parking_spots/index"
  # get "parking_spots/show"
  get 'parking_spots' => 'parking_spots#index', as: 'parking_spots'
  get "parking_spots/index"
  get "/parking_spots/:id", to: "parking_spots#show", as: "parking_spot", constraints: { id: /\d+/ }

  # resources :business_zones, only: %i[index show]
  get "business_zones/index"
  get "business_zones/show"
  # resources :hourly_rates, only: %i[index show]
  get "hourly_rates/index"
  get "hourly_rates/show"
  # resources :streets, only: %i[index show]
  get 'streets' => 'streets#index', as: 'streets'
  get "streets/index"
  get "/streets/:id", to: "streets#show", as: "street", constraints: { id: /\d+/ }

  # resources :time_limits, only: %i[index show]
  get "time_limits/index"
  get "time_limits/show"

  get 'about_page' => 'about_page#index', as: 'about_page'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root to: "parking_spots#index"
end
