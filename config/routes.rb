Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "lists#home"

  resources :lists do
    resources :bookmarks, only: %i[create new]
  end
  resources :bookmarks, only: %i[destroy]
end
