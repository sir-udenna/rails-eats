Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :users
      resources :restaurants
      resources :favorites
      post '/login', to: "auth#login"
      get '/yelp_restaurants', to: "restaurants#fetch_businesses"
      get '/yelp_restaurants_info', to: "restaurants#fetch_businesses_info"
    end
  end
end
