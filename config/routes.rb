Rails.application.routes.draw do
  resources :rides
  resources :horses
  resources :owners
  resources :training_options
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end