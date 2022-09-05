Rails.application.routes.draw do
  get 'customers/index'
  resources :routes
  get 'pages/index'
  get "/drivers", to: "drivers#index"
  get "/customers", to: "customers#index"
  post "/bookings", to: "bookings#create"
  devise_for :drivers
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#index"

   match '*path', to: redirect{ |p, req| req.flash[:alert] = "Page not found"; '/' }, via: :all
end

