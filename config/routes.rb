Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
    resources :comments, only: :create  
    resources :users, :only => :show
      end
  resources :places do
    resources :photos, only: :create
    resources :users, :only => :show
  end
end
