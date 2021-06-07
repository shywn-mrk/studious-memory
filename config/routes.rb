Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :todos, only: [:create, :index, :show, :update, :destroy,]
  resources :products
end
