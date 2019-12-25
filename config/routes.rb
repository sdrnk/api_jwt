Rails.application.routes.draw do
  post 'login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  delete 'logout', to: 'authentication#destroy'
  resources :todos do
    resources :items
  end
  # resources :authentication, path: 'login', only: [:update]
  # resources :users, path: 'signup', only: [:create]
end
