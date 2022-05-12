Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create] 
      resources :likes, only: [:create]
    end
  end

  namespace :api, :defaults => {:format => :json} do
    resources :users, only: [:index, :show] do
      resources :posts, only: [:index, :show] do
        resources :comments, only: [:index, :create] 
      end
    end
  end

  root "users#index"
end
