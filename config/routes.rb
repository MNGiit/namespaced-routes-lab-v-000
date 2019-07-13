Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs
  
  # new code
  namespace :admin do
    resources :artists, only: [:index]
    resources :preferences, only: [:index]
  end
  
end
