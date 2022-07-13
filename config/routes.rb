Rails.application.routes.draw do
  resources :articles, only: [:show, :new, :create, :index] do
    resources :comments, only: [:create]
  end
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new", as: "login_page"
  root "articles#index"
end
