Rails.application.routes.draw do
  root to: "companies#index"

  resources :users, only: [:create, :new]
  resource :session, only: [:create, :new, :destroy]

  resources :companies, only: [:index, :create, :new, :show] do
    resources :prices, only: [:index]
  end
end
