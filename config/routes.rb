Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :planet_offers
  resources :reservations
  # Defines the root path route ("/")
  # root "articles#index"
  get "/pages/profile", to: "pages#profile"
end
