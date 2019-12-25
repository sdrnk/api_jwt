Rails.application.routes.draw do
  post 'login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
