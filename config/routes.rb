Rails.application.routes.draw do
  resources :lists, except: [:destroy] do
    resource :bookmarks, only: [:new, :create]
  end

  delete 'lists/:id', to: 'lists#destroy', as: :del_list
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :del_bookmark
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end
