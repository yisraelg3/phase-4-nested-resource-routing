Rails.application.routes.draw do
  resources :dog_houses, only: [:show]
  resources :reviews, only: [:show, :index, :create]


  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end
  # get '/dog_houses/:dog_house_id/reviews', to: "dog_houses#index_reviews"
  # get '/dog_houses/:dog_house_id/reviews/:review_id', to: "dog_houses#reviews"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
