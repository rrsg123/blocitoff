Rails.application.routes.draw do
  devise_for :users

  get 'items/create'

  get 'items/new'

  get 'items/show'

  get 'welcome/index'
  
  root 'welcome#index'

  resources :users, only: [:index, :show] do
    resources :items
   end

  resources :items, only: [:create, :destroy]
end
