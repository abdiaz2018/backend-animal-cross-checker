class IslandController < ApplicationController
    def index 
        islands = Island.all
        render json: islands
    end
end