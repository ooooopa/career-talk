Rails.application.routes.draw do
  get 'sessions/new'

  root to: "topics#index"
  resources :comments
  resources :topics do
    collection do
      post:search
    end
  end
  resources :users
  
  resources :sessions, only:[:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
