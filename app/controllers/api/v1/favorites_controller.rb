class Api::V1::FavoritesController < ApplicationController
    before_action :logged_in?

    def index
        favorites = Favorite.all
    end
    
end
