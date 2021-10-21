class IslandsController < ApplicationController
    def create 
        island = Island.create(island_params)
        if island
            render json: island 
        else
            render json: {error: 'This island could not be created'}
        end
    end
    def index 
        islands = Island.all
        render json: islands
    end
end