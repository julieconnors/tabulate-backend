Rails.application.routes.draw do


  resources :users
  resources :services
  namespace :api do
    namespace :v1 do
      post "login", to: "users#auth"

      resources :rides
      resources :horses
      resources :owners
      resources :services
      resources :users
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
