class IslandController < ApplicationController
    def create 
        island = Island.create(island_params)
    end
    def index 
        islands = Island.all
        render json: islands
    end
end