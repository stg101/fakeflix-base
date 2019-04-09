Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 

    resources :series, only: [:index, :show] 

    resources :movies, only: [:index, :show] do
      patch "playback", on: :member 
    end

    resources :episodes, only: [:show] do
      patch "playback", on: :member 
    end

    resources :rentals, only: [:index, :show] do
      collection do
        post 'movies/:id' => :rent_movie
        post 'series/:id' => :rent_serie
      end      
    end
  end
end
