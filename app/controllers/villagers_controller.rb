class VillagersController < ApplicationController
    def create 
        villager = Villager.create(villager_params)
        render json: villager
    end

    def index
        if params[:island_id]
            island = Island.find(params[:island_id])
            villagers = island.villagers
            render json: villagers
        else
            villagers = Villager.all
            render json: villagers 
        end
    end

    private 

    def villager_params
        params.require(:villager).permit(:name, :talked_to, :island_id)
    end
end