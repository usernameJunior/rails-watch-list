Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'lists#index'

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[show new create]
  end

  resources :bookmarks, only: %i[destroy]
end
