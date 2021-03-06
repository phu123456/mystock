Rails.application.routes.draw do
  resources :discriptions
  resources :trucks
  resources :drivers
  devise_for :users
  resources :storages
  resources :histories

  resources :tyres do
    collection do
      get 'swap'
      get 'available'
    end
  end

  resources :greases do
    collection do
      get 'repaired'
    end
  end

  resources :parts do
    collection do
      get 'his'
    end
  end

  root to: 'parts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
