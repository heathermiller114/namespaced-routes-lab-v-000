Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :preferences, only: [:index, :update]
  end

  resources :artists do 
    resources :songs, only: [:index, :show]
  end

  resources :songs

end
