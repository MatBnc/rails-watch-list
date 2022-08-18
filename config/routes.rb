Rails.application.routes.draw do
  resources :lists do
    resource :bookmarks, only: [:new, :create]
  end

  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :del_bookmark
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end
