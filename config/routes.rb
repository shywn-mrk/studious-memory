Rails.application.routes.draw do
  resources :todos, only: [:create, :index, :show, :update, :destroy,]
end
