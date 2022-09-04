Rails.application.routes.draw do
  resources :routes
  get 'pages/index'
  get "/drivers", to: "drivers#index"
  devise_for :drivers
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#index"

   match '*path', to: redirect{ |p, req| req.flash[:alert] = "Page not found"; '/' }, via: :all
end

