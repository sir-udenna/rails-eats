class Api::V1::RestaurantsController < ApplicationController
    before_action :logged_in?

    def index 
        restaurants = Restaurant.all
        render json: restaurants
    end
    
end
