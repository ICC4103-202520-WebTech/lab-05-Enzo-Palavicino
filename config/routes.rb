Rails.application.routes.draw do
  get "services/index"
  get "services/show"
  get "reservations/index"
  get "reservations/show"
  get "guests/index"
  get "guests/show"
  get "rooms/index"
  get "rooms/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # Para las Rooms
  get "/rooms", to: "rooms#index", as: "rooms"
  get "/rooms/:id", to: "rooms#show", as: "room"
  # Los Guests
  get "/guests", to: "guests#index", as: "guests"
  get "/guests/:id", to: "guests#show", as: "guest"
  # Reservations
  get "/reservations", to: "reservations#index", as: "reservations"
  get "/reservations/:id", to: "reservations#show", as: "reservation"
  # Services
  get "/services", to: "services#index", as: "services"
  get "/services/:id", to: "services#show", as: "service"
  # Root
  root "rooms#index"

end
