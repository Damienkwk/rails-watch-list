Rails.application.routes.draw do
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new", as: :new_lists
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :list
  resources :lists, only: [:create, :index, :new, :show] do
    resources :bookmarks, only: [:new, :create]
  end
end
