Rails.application.routes.draw do
  # resources :parking_spots, only: %i[index show]
  get "parking_spots/index"
  get "parking_spots/show"
  # resources :business_zones, only: %i[index show]
  get "business_zones/index"
  get "business_zones/show"
  # resources :hourly_rates, only: %i[index show]
  get "hourly_rates/index"
  get "hourly_rates/show"
  # resources :streets, only: %i[index show]
  get "streets/index"
  get "streets/show"
  # resources :time_limits, only: %i[index show]
  get "time_limits/index"
  get "time_limits/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
