Rails.application.routes.draw do
  # get "restaurants", to: "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

