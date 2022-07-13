Rails.application.routes.draw do
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new", as: "login_page"
  root "articles#index"
  resources :articles, only: [:show, :new, :create, :index] do
    resources :comments, only: [:create]
  end
end
