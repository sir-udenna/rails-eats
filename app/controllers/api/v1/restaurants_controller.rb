class Api::V1::RestaurantsController < ApplicationController
    before_action :logged_in?
    skip_before_action :authorized, only: :fetch_businesses

    def index 
        restaurants = Restaurant.all
        render json: restaurants
    end


    def fetch_businesses

        search_term = 'japanese'
        latitude =  params[:lat]
        longitude = params[:long]
        puts params

        url = URI("https://api.yelp.com/v3/businesses/search?term=#{search_term}&latitude=#{latitude}&longitude=#{longitude}&sort_by=distance")
        puts url
        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request["Authorization"] = "Bearer TfAfZ9CEBvQhMOvO5CcgbnmVNh4raReuVs6pQ5T9feqpz8_QmXw-R1kWfxJTvMoE5d7mGrencCzHmRCR2alxB2whr8GMm0byjI22x0kia_u2TgHwPLdrwO31RBSwYHYx"

        response = https.request(request)
        # byebug
        render json: {result: JSON.parse(response.body)}
    end
    
end
