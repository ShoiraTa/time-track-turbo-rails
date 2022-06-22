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
  post 'activities/update_timeframe'
  root "activities#index"
end

