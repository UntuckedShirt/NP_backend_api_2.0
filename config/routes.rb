Rails.application.routes.draw do
  resources :games, only: [:index, :create, :destroy, :update, :show]
  resources :reviews, only: [:index, :create, :destroy, :update, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
