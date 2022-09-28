Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "home/index"
  root to: "home#index"

  get "dashboard", controller: "home", action: "dashboard", as: "dashboard"
  resources :posts do
    post :add_comment, on: :member
  end
end
