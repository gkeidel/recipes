Rails.application.routes.draw do
  # collection
  # member

  root 'recipes#index'
  resources :recipes do
    # /recipes/...
    collection do
      # get 'top', to: 'recipes#top', as: :top_recipes
      get :top
    end

    member do
      get :cook
    end

    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
