Rails.application.routes.draw do
  resources :messages
  resources :timelogs
  resources :activities do
    member do 
      post :edit
      # post :index
    end
  end
  devise_for :users
  resources :users
  get 'pages/index'
  get 'pages/business'
  get 'pages/teach'
  get 'pages/terms'
  root "activities#index"
end

