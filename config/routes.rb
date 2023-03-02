Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/users", to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :planet_offers do
    resources :reservations
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get "/pages/profile", to: "pages#profile"
end
