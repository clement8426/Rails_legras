Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  get :home, to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :networks, only: [:index, :show, :destroy]
  resources :carts, only: [:index, :show]
  resources :ingredients, only: [:index, :show]
  resources :carts_items, only: [:create, :destroy]
  resources :carts_items do
    get :update_progress, on: :collection
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
