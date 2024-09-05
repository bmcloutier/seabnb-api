Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  post "/sessions" => "sessions#create"
  post "/users" => "users#create"

  get "/ports" => "ports#index"
  get "/vessels" => "vessels#index"

  get "/bookings" => "bookings#index"
  get "/bookings/:id" => "bookings#show"
  post "/bookings" => "bookings#create"
  patch "/bookings/:id" => "bookings#update"
  delete "/bookings/:id" => "bookings#destroy"
end
