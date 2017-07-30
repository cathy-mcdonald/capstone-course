Rails.application.routes.draw do
  scope :api, defaults: {format: :json}  do 
    resources :cities, only: [:index, :show, :update, :create]
    resources :states, only: [:index, :show, :update, :create]
  end
  
  get '/ui' => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
end
