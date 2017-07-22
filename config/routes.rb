Rails.application.routes.draw do
  scope :api, defaults: {format: :json}  do 
    resources :cities, only: [:index, :show]
    resources :states, only: [:index, :show]
    resources :foos, except: [:new, :edit]
    resources :bars, except: [:new, :edit]
  end
  
  get '/ui' => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
end
