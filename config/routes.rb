Rails.application.routes.draw do
  root to: "welcome#index"

  devise_for :users

  resources :users, only: [] do
    resources :donations, except: [:create, :destroy, :update]
  end

  resources :donations, only: [:create, :destroy, :update]
end
