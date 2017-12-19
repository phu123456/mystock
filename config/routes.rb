Rails.application.routes.draw do
  resources :discriptions
  resources :trucks
  resources :drivers
  devise_for :users
  resources :storages
  resources :histories
  resources :parts

  resources :tyres do
    collection do
      get 'swap'
    end
  end

  root to: 'parts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
