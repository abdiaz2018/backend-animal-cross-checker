class VillagersController < ApplicationController
    def create 
        villager = Villager.create(villager_params)
        render json: villager
    end

    def index
        villagers = Villager.all
        render json: villagers 
    end

    private 

    def villager_params
        params.require(:villager).permit(:name, :talked_to, :island_id)
    end
end