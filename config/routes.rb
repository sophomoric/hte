Hte::Application.routes.draw do
  resources :users, only: [] do
    resources :donations
  end

  root to: "welcome#index"

  devise_for :users
end
