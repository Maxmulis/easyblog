Rails.application.routes.draw do
  resources :articles, only: [:show, :new, :create, :index] do
    resources :comments, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
