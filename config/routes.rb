Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create] 
      resources :likes, only: [:create]
    end
  end

  namespace :api, :defaults => {:format => :json} do
    post 'login', to: 'authentication#authenticate'
    resources :users, only: [:index, :show] do
      resources :posts, only: [:index, :show] do
        resources :comments, only: [:index, :create] 
      end
    end
  end

  root "users#index"
end
