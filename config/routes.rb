Rails.application.routes.draw do
  resources :timelogs
  resources :activities
  devise_for :views
  devise_for :users
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
